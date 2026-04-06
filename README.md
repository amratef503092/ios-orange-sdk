# Beltone Trade - iOS XCFrameworks

Pre-built XCFrameworks for integrating the Beltone Trade Flutter module into a native iOS app.

## Swift Package Manager (recommended)

In Xcode: **File → Add Package Dependencies...** → paste:

```
https://github.com/amratef503092/ios-orange-sdk
```

Set dependency rule to **Branch → main**. Xcode downloads and links all 41 frameworks automatically.

## Manual Download

Go to [Releases](https://github.com/amratef503092/ios-orange-sdk/releases) and download the latest `BeltoneTrade-iOS-Debug.zip`.

1. Unzip and create a `Flutter/Debug/` folder inside your Xcode project directory
2. Move all `.xcframework` folders into `Flutter/Debug/`
3. In Xcode: drag all xcframeworks into your project → **Embed & Sign**
4. Add to **Build Settings → Framework Search Paths**:
   ```
   $(PROJECT_DIR)/Flutter/$(CONFIGURATION)/
   ```

## Full Integration Guide

See [INTEGRATION_GUIDE.md](INTEGRATION_GUIDE.md) for the complete step-by-step setup with MethodChannel code.
