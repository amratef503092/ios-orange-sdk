# Beltone Trade — iOS SPM SDK

Beltone Trade Flutter module distributed as XCFrameworks via Swift Package Manager for native iOS integration.

## Requirements

| Requirement | Version |
|-------------|---------|
| iOS Deployment Target | 13.0+ |
| Xcode | 15.0+ |
| Swift | 5.7+ |

## Installation

### Swift Package Manager

In Xcode:

1. **File → Add Package Dependencies...**
2. Enter the repository URL:
   ```
   https://github.com/amratef503092/ios-orange-sdk
   ```
3. Set **Dependency Rule** to **Branch → `main`**
4. Click **Add Package**
5. Select the **BeltoneTrade** library and add it to your target

> **Important:** Always open your project via `.xcworkspace`, not `.xcodeproj`.
>
> First resolve takes a few minutes (~176 MB total). After that, Xcode caches everything.

---

## Integration (Credentials Flow)

### Step 1: Start FlutterEngine in AppDelegate

Start the Flutter engine when the app launches and create a persistent `FlutterViewController`:

```swift
import UIKit
import Flutter

class AppDelegate: NSObject, UIApplicationDelegate {
    lazy var flutterEngine = FlutterEngine(name: "beltone_engine")
    var flutterVC: FlutterViewController!

    var enteredToken = ""
    var enteredMobile = ""

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        flutterEngine.run()
        GeneratedPluginRegistrant.register(with: flutterEngine)

        // CRITICAL: Create FlutterViewController immediately after engine starts.
        // Without this, presenting later shows a BLACK SCREEN because the engine
        // ran headless without a rendering surface.
        flutterVC = FlutterViewController(
            engine: flutterEngine, nibName: nil, bundle: nil
        )

        setupHostChannel()

        return true
    }
}
```

### Step 2: Setup Host Channel

Handle Flutter's callbacks and respond to credential requests:

```swift
private let hostChannel = "com.beltonefinancial.beltonetrade/host"

private func setupHostChannel() {
    let channel = FlutterMethodChannel(
        name: hostChannel,
        binaryMessenger: flutterEngine.binaryMessenger
    )
    channel.setMethodCallHandler { (call, result) in
        switch call.method {

        // Flutter is initialized and ready
        case "moduleReady":
            print("Flutter module ready")
            result(nil)

        // Flutter pulls credentials from native
        case "getOrangeCredentials":
            if !self.enteredToken.isEmpty && !self.enteredMobile.isEmpty {
                result([
                    "token": self.enteredToken,
                    "mobile": self.enteredMobile
                ])
            } else {
                result(nil)
            }

        default:
            result(nil)
        }
    }
}
```

### Step 3: Push Credentials & Present Flutter

Before presenting the Flutter screen, push the user's **token** and **mobile**:

```swift
func openBeltoneTrade(token: String, mobile: String) {
    enteredToken = token
    enteredMobile = mobile

    // Present the persistent FlutterViewController
    flutterVC.modalPresentationStyle = .fullScreen

    guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
          let root = scene.windows.first?.rootViewController else { return }

    root.present(flutterVC, animated: true) {
        // Push credentials AFTER Flutter is fully visible
        self.pushCredentialsToFlutter()
    }
}

func pushCredentialsToFlutter() {
    let channel = FlutterMethodChannel(
        name: hostChannel,
        binaryMessenger: flutterEngine.binaryMessenger
    )
    channel.invokeMethod("getCredentials", arguments: [
        "token": enteredToken,
        "mobile": enteredMobile
    ])
}
```

> **Important:** Push credentials in the `present()` completion handler — this ensures Flutter's rendering surface is ready before the push triggers navigation.

### Credential Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `token` | `String` | Orange authentication token (UUID format) |
| `mobile` | `String` | User's mobile number (e.g. `"01008137330"`) |

---

## Dismissing Flutter

Flutter calls `goBackToNative` when the user is done. Listen on the navigation channel and dismiss:

```swift
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
        DispatchQueue.main.async {
            guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let root = scene.windows.first?.rootViewController else { return }
            root.dismiss(animated: true)
        }
        result(nil)
    }
}
```

---

## Sequence Diagram

```
Native App                        Flutter Module
    │                                   │
    │── App Launch ──────────────────►  │ Engine starts, SplashScreen loads
    │   flutterEngine.run()             │ (waits for credentials)
    │   flutterVC = FlutterVC(engine)   │
    │                                   │
    │   User enters token + mobile      │
    │                                   │
    │── present(flutterVC) ──────────►  │ Flutter UI becomes visible
    │                                   │
    │── invokeMethod("getCredentials")─►│ Stores token + mobile
    │   {token, mobile}                 │ Navigates to SplashScreen
    │                                   │ Starts login with credentials
    │                                   │
    │◄── "moduleReady" ────────────────│ (optional) Flutter is ready
    │                                   │
    │◄── "onLoginResult" ─────────────│ Login success/failure
    │   {status, token?, error?}        │
    │                                   │
    │◄── "goBackToNative" ────────────│ User is done
    │   dismiss(animated: true)         │
    │                                   │
```

---

## Reference Implementation

See the full working example at [ios-host](https://github.com/amratef503092/ios-host).
