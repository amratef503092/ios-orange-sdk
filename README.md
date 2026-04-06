# Beltone Trade - iOS XCFrameworks

Pre-built XCFrameworks for integrating the Beltone Trade Flutter module into a native iOS app.

---

## Option 1: Swift Package Manager (recommended)

The easiest way. One URL, Xcode does everything.

1. Open your project in Xcode
2. Go to **File → Add Package Dependencies...**
3. Paste this URL:
   ```
   https://github.com/amratef503092/ios-orange-sdk
   ```
4. Set **Dependency Rule** to **Branch** → `main`
5. Click **Add Package**
6. Make sure **BeltoneTrade** is checked → click **Add Package**

Done. Xcode downloads and links all 41 frameworks automatically.

> First resolve takes a few minutes (~176 MB total). After that, Xcode caches everything.

---

## Option 2: Manual Download

If you prefer to manage frameworks manually.

### Download

| File | Link |
|------|------|
| All frameworks (one zip) | [BeltoneTrade-iOS-Debug.zip](https://github.com/amratef503092/ios-orange-sdk/releases/tag/v1.0) |
| Individual frameworks | [v2.0-spm release](https://github.com/amratef503092/ios-orange-sdk/releases/tag/v2.0-spm) |

### Setup

1. Unzip and create a `Flutter/Debug/` folder inside your Xcode project directory
2. Move all `.xcframework` folders into `Flutter/Debug/`
3. In Xcode → your target → **General** → **Frameworks, Libraries, and Embedded Content**
4. Click **+** → **Add Other...** → select all `.xcframework` folders → **Embed & Sign**
5. Go to **Build Settings** → **Framework Search Paths** → add:
   ```
   $(PROJECT_DIR)/Flutter/$(CONFIGURATION)/
   ```

---

## What's Included (41 frameworks)

| Framework | Type |
|-----------|------|
| `App.xcframework` | Flutter app bundle |
| `Flutter.xcframework` | Flutter engine |
| `camera_avfoundation.xcframework` | Camera plugin |
| `connectivity_plus.xcframework` | Network connectivity |
| `CryptoSwift.xcframework` | Encryption |
| `device_info_plus.xcframework` | Device info |
| `DKImagePickerController.xcframework` | Image picker |
| `DKPhotoGallery.xcframework` | Photo gallery |
| `FBLPromises.xcframework` | Google Promises |
| `file_picker.xcframework` | File picker |
| `flutter_image_compress_common.xcframework` | Image compression |
| `flutter_liveness_detection_randomized_plugin.xcframework` | Face liveness |
| `flutter_pdfview.xcframework` | PDF viewer |
| `flutter_secure_storage.xcframework` | Secure storage |
| `geolocator_apple.xcframework` | Geolocation |
| `google_mlkit_commons.xcframework` | ML Kit commons |
| `google_mlkit_face_detection.xcframework` | Face detection |
| `GoogleDataTransport.xcframework` | Google data transport |
| `GoogleToolboxForMac.xcframework` | Google toolbox |
| `GoogleUtilities.xcframework` | Google utilities |
| `GTMSessionFetcher.xcframework` | HTTP session fetcher |
| `image_picker_ios.xcframework` | Image picker (iOS) |
| `IOSSecuritySuite.xcframework` | Security / jailbreak detection |
| `libwebp.xcframework` | WebP image support |
| `Mantle.xcframework` | Model framework |
| `MLImage.xcframework` | ML image processing |
| `MLKitCommon.xcframework` | ML Kit common |
| `MLKitFaceDetection.xcframework` | ML Kit face detection |
| `MLKitVision.xcframework` | ML Kit vision |
| `nanopb.xcframework` | Protocol buffers |
| `network_info_plus.xcframework` | Network info |
| `open_settings_plus.xcframework` | Open settings |
| `path_provider_foundation.xcframework` | File paths |
| `permission_handler_apple.xcframework` | Permissions |
| `SDWebImage.xcframework` | Image loading |
| `SDWebImageWebPCoder.xcframework` | WebP decoder |
| `shared_preferences_foundation.xcframework` | SharedPreferences |
| `sqflite_darwin.xcframework` | SQLite database |
| `SwiftyGif.xcframework` | GIF support |
| `url_launcher_ios.xcframework` | URL launcher |
| `webview_flutter_wkwebview.xcframework` | WebView |

---

## After Adding Frameworks

You still need to set up the **MethodChannel** communication between your app and Flutter.

See [INTEGRATION_GUIDE.md](INTEGRATION_GUIDE.md) for the complete step-by-step setup:
- AppDelegate with 4 channels (host, auth, wallet, navigation)
- Flutter wrapper view
- Payment result handling
- Working code examples

---

## Quick Links

| Resource | Link |
|----------|------|
| Integration Guide | [INTEGRATION_GUIDE.md](INTEGRATION_GUIDE.md) |
| Working iOS Host Example | [github.com/amratef503092/ios-host](https://github.com/amratef503092/ios-host) |
| All Releases | [Releases](https://github.com/amratef503092/ios-orange-sdk/releases) |
