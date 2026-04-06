# Beltone Trade — iOS Integration Guide

---

## What is this?

Beltone Trade is a Flutter screen that opens inside your iOS app.

The user taps a button → Flutter opens → user does stuff → Flutter closes → user is back in your app.

**Your job:** 2 things:
1. Add the XCFrameworks to your project (Step 0 below)
2. Write the code so your app and Flutter can talk (Steps 1-4)

---

## Step 0: Add the XCFrameworks to your project

You have **two options**. Pick one:

| Option | Best for |
|---|---|
| **Option A — Swift Package Manager (SPM)** | Easiest. One URL in Xcode. Auto-downloads everything. |
| **Option B — Manual download** | If SPM doesn't work or you prefer manual control. |

---

### Option A: Swift Package Manager (recommended)

1. Open your project in Xcode
2. Go to **File → Add Package Dependencies...**
3. Paste this URL:
   ```
   https://github.com/amratef503092/ios-orange-sdk
   ```
4. Set **Dependency Rule** to **Branch** → `main` (or **Up to Next Major** if using tagged versions)
5. Click **Add Package**
6. Xcode will download all 41 xcframeworks automatically
7. Make sure **BeltoneTrade** is checked → click **Add Package**

That's it! All frameworks are linked and embedded automatically.

> **Note:** The first resolve takes a few minutes because it downloads ~176 MB of frameworks. After that, Xcode caches them.

Skip to **Step 0.5** (Bridging Header) below.

---

### Option B: Manual download

#### 0.1 Download

Go to [Releases](https://github.com/amratef503092/ios-orange-sdk/releases) and download the latest `BeltoneTrade-iOS-Debug.zip`.

#### 0.2 Unzip and add to your project

1. Unzip `BeltoneTrade-iOS-Debug.zip`
2. Create a folder called `Flutter/Debug/` inside your Xcode project folder
3. Move **all** `.xcframework` folders into `Flutter/Debug/`

Your folder should look like this:

```
YourApp/
├── YourApp.xcodeproj
├── YourApp/
│   ├── AppDelegate.swift
│   ├── ContentView.swift
│   └── Info.plist
└── Flutter/
    └── Debug/
        ├── App.xcframework
        ├── Flutter.xcframework
        ├── camera_avfoundation.xcframework
        ├── ... (all other xcframeworks)
```

#### 0.3 Add to Xcode

1. Open your `.xcworkspace` in Xcode
2. Select your project → your target → **General** tab
3. Scroll to **Frameworks, Libraries, and Embedded Content**
4. Click **+** → **Add Other...** → **Add Files...**
5. Select **all** `.xcframework` folders inside `Flutter/Debug/`
6. Set each one to **Embed & Sign**

#### 0.4 Add Framework Search Path

1. Go to **Build Settings** → search for **Framework Search Paths**
2. Add this path:

```
$(PROJECT_DIR)/Flutter/$(CONFIGURATION)/
```

---

### 0.5 Add a Bridging Header

Create a file called `YourApp-Bridging-Header.h`:

```objc
#import "GeneratedPluginRegistrant.h"
```

In **Build Settings** → **Objective-C Bridging Header**, set:

```
YourApp/YourApp-Bridging-Header.h
```

### 0.6 Copy GeneratedPluginRegistrant

Copy these 2 files from the XCFrameworks download into your project:
- `GeneratedPluginRegistrant.h`
- `GeneratedPluginRegistrant.m`

> You can find them in the ios-host repo: [github.com/amratef503092/ios-host](https://github.com/amratef503092/ios-host)

Build the project. If it says **BUILD SUCCEEDED** → go to Step 1.

---

## How does it work?

Your app and Flutter send messages to each other using **MethodChannel**.

Think of it like a phone call:
- Flutter calls you → you pick up and answer
- You call Flutter → Flutter picks up and answers

Every call has a **name**. We use 4 names:

| Name | What it does |
|---|---|
| `com.beltonefinancial.beltonetrade/host` | Flutter says "I'm ready" |
| `com.beltone.trade/auth` | Flutter asks for login info |
| `com.beltone.trade/wallet` | Flutter tells you the payment result |
| `com.myorange/navigation` | Flutter says "close me" |

---

## You need to do 4 things

| # | What | One sentence |
|---|---|---|
| 0 | **Host** | Tell Flutter it's running inside your native app |
| 1 | **Login** | Give Flutter the user's credentials (or token) |
| 2 | **Payment** | Save the payment result when Flutter sends it |
| 3 | **Close** | Close the Flutter screen when Flutter says "I'm done" |

---

## Step 1: Create the AppDelegate

This is the main file. Copy it into your project.

> If you already have an AppDelegate, just add the channel setup code.

```swift
import UIKit
import Flutter

// This holds the payment result
struct ChargeResult {
    let amount: Double
    let currency: String
    let method: String
    let transactionId: String
}

class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject {
    lazy var flutterEngine = FlutterEngine(name: "beltone_engine")

    // Flutter saves the payment result here
    @Published var shouldDismissFlutter = false
    @Published var lastChargeResult: ChargeResult?

    // Your View calls this to get the result (one-time)
    func consumeChargeResult() -> ChargeResult? {
        let r = lastChargeResult
        lastChargeResult = nil
        return r
    }

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        flutterEngine.run()
        GeneratedPluginRegistrant.register(with: flutterEngine)

        // 0️⃣ HOST (required — Flutter needs this to know it's embedded)
        setupHostChannel()

        // 1️⃣ LOGIN
        setupAuthChannel()

        // 2️⃣ PAYMENT RESULT
        setupWalletChannel()

        // 3️⃣ CLOSE FLUTTER
        setupNavigationChannel()

        return true
    }


    // ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    //  0️⃣  HOST / MODULE READY
    //  Channel: "com.beltonefinancial.beltonetrade/host"
    //
    //  IMPORTANT: Without this, Flutter thinks it's
    //  running standalone and won't send payment results!
    // ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    private func setupHostChannel() {
        let channel = FlutterMethodChannel(
            name: "com.beltonefinancial.beltonetrade/host",
            binaryMessenger: flutterEngine.binaryMessenger
        )
        channel.setMethodCallHandler { (call, result) in
            switch call.method {
            case "moduleReady":
                print("[Beltone] Flutter module ready")
                result(nil)
            default:
                result(nil)
            }
        }
    }


    // ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    //  1️⃣  LOGIN
    //  Channel: "com.beltone.trade/auth"
    //
    //  You have 2 options. Pick one, delete the other.
    // ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    private func setupAuthChannel() {

        // ╔═══════════════════════════════════════════╗
        // ║  OPTION A — DEMO (username + password)    ║
        // ║  Use this for testing                     ║
        // ╚═══════════════════════════════════════════╝

        let channel = FlutterMethodChannel(
            name: "com.beltone.trade/auth",
            binaryMessenger: flutterEngine.binaryMessenger
        )
        channel.setMethodCallHandler { (call, result) in
            switch call.method {

            case "getCredentials":
                let username = "agaber"       // ← change this
                let password = "Ag@13579"     // ← change this
                result(["username": username, "password": password])
                print("[Beltone] Sent credentials to Flutter")

            case "onLoginResult":
                let args = call.arguments as? [String: Any]
                let status = args?["status"] as? String
                let error  = args?["error"] as? String
                if status == "success" {
                    print("[Beltone] Login OK")
                } else {
                    print("[Beltone] Login FAILED: \(error ?? "unknown")")
                }
                result(nil)

            default:
                result(FlutterMethodNotImplemented)
            }
        }

        // ╔═══════════════════════════════════════════╗
        // ║  OPTION B — PRODUCTION (JWT token)        ║
        // ║  Use this when you have real auth         ║
        // ║                                           ║
        // ║  To use: delete OPTION A, uncomment this  ║
        // ╚═══════════════════════════════════════════╝
        //
        // let channel = FlutterMethodChannel(
        //     name: "com.beltone.trade/auth",
        //     binaryMessenger: flutterEngine.binaryMessenger
        // )
        // channel.setMethodCallHandler { (call, result) in
        //     switch call.method {
        //
        //     case "getToken":
        //         let token: String? = YourAuthManager.getToken()  // ← your real token
        //         if let token = token {
        //             result(["token": token])
        //             print("[Beltone] Token sent to Flutter")
        //         } else {
        //             result(nil)
        //         }
        //
        //     case "onAuthResult":
        //         let args = call.arguments as? [String: Any]
        //         let status = args?["status"] as? String
        //         print("[Beltone] Auth result: \(status ?? "")")
        //         result(nil)
        //
        //     default:
        //         result(FlutterMethodNotImplemented)
        //     }
        // }
    }


    // ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    //  2️⃣  PAYMENT RESULT
    //  Channel: "com.beltone.trade/wallet"
    // ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    private func setupWalletChannel() {
        let channel = FlutterMethodChannel(
            name: "com.beltone.trade/wallet",
            binaryMessenger: flutterEngine.binaryMessenger
        )
        channel.setMethodCallHandler { [weak self] (call, result) in
            let args = call.arguments as? [String: Any]

            switch call.method {

            // Payment worked
            case "onChargeSuccess":
                let amount        = args?["amount"] as? Double ?? 0.0
                let currency      = args?["currency"] as? String ?? "EGP"
                let method        = args?["method"] as? String ?? ""
                let transactionId = args?["transactionId"] as? String ?? ""

                print("[Beltone] Payment OK: \(amount) \(currency)")

                DispatchQueue.main.async {
                    self?.lastChargeResult = ChargeResult(
                        amount: amount,
                        currency: currency,
                        method: method,
                        transactionId: transactionId
                    )
                }
                result(nil)

            // Payment failed
            case "onChargeFailed":
                let error = args?["error"] as? String ?? "unknown"
                print("[Beltone] Payment FAILED: \(error)")
                result(nil)

            // Flutter is closing
            case "onFlutterClose":
                print("[Beltone] Flutter closing")
                DispatchQueue.main.async { self?.shouldDismissFlutter = true }
                result(nil)

            default:
                result(FlutterMethodNotImplemented)
            }
        }
    }


    // ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    //  3️⃣  CLOSE FLUTTER
    //  Channel: "com.myorange/navigation"
    // ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

    private func setupNavigationChannel() {
        let channel = FlutterMethodChannel(
            name: "com.myorange/navigation",
            binaryMessenger: flutterEngine.binaryMessenger
        )
        channel.setMethodCallHandler { [weak self] (call, result) in
            guard call.method == "goBackToNative" else {
                result(FlutterMethodNotImplemented)
                return
            }
            print("[Beltone] Flutter done, closing")
            DispatchQueue.main.async { self?.shouldDismissFlutter = true }
            result(nil)
        }
    }
}
```

---

## Step 2: Create the Flutter wrapper view

Create a new file called `FlutterViewControllerRepresentable.swift`:

```swift
import SwiftUI
import Flutter

struct FlutterViewControllerRepresentable: UIViewControllerRepresentable {
    let engine: FlutterEngine

    func makeUIViewController(context: Context) -> FlutterViewController {
        FlutterViewController(engine: engine, nibName: nil, bundle: nil)
    }

    func updateUIViewController(_ uiViewController: FlutterViewController, context: Context) {}
}
```

---

## Step 3: Set up the App entry point

In your `YourApp.swift` (the `@main` struct):

```swift
import SwiftUI

@main
struct YourApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appDelegate)
        }
    }
}
```

---

## Step 4: Open Flutter and show the payment result

In your `ContentView.swift`:

```swift
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var appDelegate: AppDelegate
    @State private var showFlutter = false
    @State private var chargeResult: ChargeResult?
    @State private var showResultCard = false

    var body: some View {
        ZStack {
            VStack(spacing: 24) {
                Text("My App")
                    .font(.title)

                // Button that opens Flutter
                Button("Open Beltone Trade") {
                    showFlutter = true
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(12)
            }

            // Show payment result card
            if showResultCard, let result = chargeResult {
                VStack {
                    Spacer()
                    VStack(spacing: 12) {
                        Text("Payment Deducted")
                            .font(.headline)

                        // result.amount        → 500.0
                        // result.currency      → "EGP"
                        // result.method        → "orange_cash"
                        // result.transactionId → "TXN-123456"
                        Text("\(Int(result.amount)) \(result.currency)")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.orange)

                        Button("Dismiss") {
                            withAnimation { showResultCard = false }
                        }
                    }
                    .padding(24)
                    .background(Color.white)
                    .cornerRadius(16)
                    .shadow(radius: 10)
                    .padding(24)
                }
            }
        }
        // This opens Flutter full screen
        .fullScreenCover(isPresented: $showFlutter, onDismiss: {
            // Called AFTER Flutter screen is fully closed
            if let result = appDelegate.consumeChargeResult() {
                chargeResult = result
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                    withAnimation { showResultCard = true }
                }
            }
        }) {
            FlutterViewControllerRepresentable(engine: appDelegate.flutterEngine)
                .ignoresSafeArea()
        }
        // Listen for Flutter saying "close me"
        .onChange(of: appDelegate.shouldDismissFlutter) { shouldDismiss in
            if shouldDismiss {
                showFlutter = false
                appDelegate.shouldDismissFlutter = false
            }
        }
    }
}
```

---

## The full flow (what happens)

```
User taps button
    ↓
Flutter opens (fullScreenCover)
    ↓
Flutter asks: "getCredentials" (or "getToken")
    ↓
You send login info
    ↓
Flutter logs in → goes to home screen
    ↓
User goes to Wallet → Cash In → enters amount
    ↓
User taps "Confirm"
    ↓
Payment succeeds
    ↓
Flutter sends you: "onChargeSuccess" (amount, currency, etc.)
    ↓
Flutter shows success message (3 seconds)
    ↓
Flutter calls: "onFlutterClose" → then "goBackToNative"
    ↓
fullScreenCover dismisses → onDismiss fires
    ↓
You read the result → show the card
```

---

## Quick reference — all methods

### `com.beltonefinancial.beltonetrade/host` (Host)

| Method | Who calls | What |
|---|---|---|
| `moduleReady` | Flutter tells you | Flutter is ready. Just reply `result(nil)`. **Must handle this!** |

### `com.beltone.trade/auth` (Login)

**Demo:**

| Method | Who calls | What |
|---|---|---|
| `getCredentials` | Flutter asks you | Send: `["username": "...", "password": "..."]` |
| `onLoginResult` | Flutter tells you | Receive: `["status": "success", "token": "..."]` |

**Production:**

| Method | Who calls | What |
|---|---|---|
| `getToken` | Flutter asks you | Send: `["token": "eyJ..."]` or `nil` |
| `onAuthResult` | Flutter tells you | Receive: `["status": "success"]` or `["status": "failed"]` |

### `com.beltone.trade/wallet` (Payment)

| Method | Who calls | What |
|---|---|---|
| `onChargeSuccess` | Flutter tells you | `["amount": 500.0, "currency": "EGP", "method": "orange_cash", "transactionId": "TXN-123"]` |
| `onChargeFailed` | Flutter tells you | `["amount": 500.0, "error": "..."]` |
| `onFlutterClose` | Flutter tells you | `["chargedAmount": 500.0]` — Flutter is about to close |

### `com.myorange/navigation` (Close)

| Method | Who calls | What |
|---|---|---|
| `goBackToNative` | Flutter tells you | Close the Flutter screen (`shouldDismissFlutter = true`) |

---

## FAQ

**Q: Demo or Production?**
A: Testing? Use Demo. Real app with real users? Use Production.

**Q: Why do I need `setupHostChannel()`?**
A: Without it, Flutter thinks it's running standalone (not inside your app). It will enter "simulation mode" and **never send payment results**. This is the #1 mistake.

**Q: What if login fails?**
A: Flutter tells you via `onLoginResult` (demo) or `onAuthResult` (prod) with `status = "failed"`.

**Q: What if user goes back without paying?**
A: `consumeChargeResult()` returns `nil`. That's normal.

**Q: What if payment fails?**
A: Flutter handles it. User sees error inside Flutter. You get `onChargeFailed` in log.

**Q: Why `.xcworkspace` not `.xcodeproj`?**
A: If you use CocoaPods (even with zero pods), always open the `.xcworkspace`. Opening `.xcodeproj` gives "framework not found" errors.

**Q: What if Flutter crashes?**
A: Flutter screen closes. Your app keeps working.

---

## How to test

Run the app and check the Xcode console. You should see:

```
[Beltone] Flutter module ready      ← Flutter is embedded correctly
[Beltone] Sent credentials          ← login info sent
[Beltone] Login OK                  ← login worked
[Beltone] Payment OK: 500.0 EGP    ← payment done
[Beltone] Flutter closing           ← Flutter closed
[Beltone] Flutter done, closing     ← screen dismissed
```

If you see `SIMULATION MODE` in the console → you forgot `setupHostChannel()`.

---

## Something not working?

| Problem | Fix |
|---|---|
| No payment result / amount not showing | Check `setupHostChannel()` is set up. Without it Flutter enters simulation mode |
| "No such module 'Flutter'" | XCFrameworks not added to project, or wrong Framework Search Paths |
| "Framework not found Pods_iphonehost" | Open `.xcworkspace` not `.xcodeproj` |
| "Multiple commands produce .framework" | Same framework in both Pods and XCFrameworks. Remove from Podfile |
| Flutter shows login screen | Wrong username/password or bad token |
| Flutter doesn't close | Check both wallet and navigation channels are set up |
| App crashes on launch | Make sure `flutterEngine.run()` is called in `didFinishLaunchingWithOptions` |
| Nothing works | Check channel names — must be **exact** match |

---

## Checklist

- [ ] XCFrameworks added via **SPM** (Option A) or **manual download** (Option B)
- [ ] If manual: all XCFrameworks added to Xcode with **Embed & Sign**
- [ ] If manual: Framework Search Paths has `$(PROJECT_DIR)/Flutter/$(CONFIGURATION)/`
- [ ] Bridging Header set up with `GeneratedPluginRegistrant.h`
- [ ] `GeneratedPluginRegistrant.h` and `.m` copied into project
- [ ] AppDelegate has `setupHostChannel()` — **CRITICAL**
- [ ] AppDelegate has `setupAuthChannel()` — Demo or Production
- [ ] AppDelegate has `setupWalletChannel()`
- [ ] AppDelegate has `setupNavigationChannel()`
- [ ] Login info is correct (credentials or token)
- [ ] ContentView reads `consumeChargeResult()` in `onDismiss`
- [ ] Using `.xcworkspace` not `.xcodeproj`
- [ ] Tested — see `[Beltone] Flutter module ready` in console

---

## Reference: Working Example

Full working iOS host app: [github.com/amratef503092/ios-host](https://github.com/amratef503092/ios-host) (private)

---

**Done!**
