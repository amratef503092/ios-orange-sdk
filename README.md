# Beltone Trade - iOS XCFrameworks

Pre-built XCFrameworks for integrating the Beltone Trade Flutter module into a native iOS app.

## Download

Go to [Releases](https://github.com/amratef503092/ios-orange-sdk/releases) and download the latest `BeltoneTrade-iOS-Debug.zip`.

## Setup

1. Download and unzip `BeltoneTrade-iOS-Debug.zip`
2. Create a `Flutter/Debug/` folder inside your Xcode project directory
3. Move all `.xcframework` folders into `Flutter/Debug/`
4. In Xcode: drag all xcframeworks into your project → **Embed & Sign**
5. Add to **Build Settings → Framework Search Paths**:
   ```
   $(PROJECT_DIR)/Flutter/$(CONFIGURATION)/
   ```

## Full Integration Guide

See [INTEGRATION_GUIDE.md](INTEGRATION_GUIDE.md) for the complete step-by-step setup with MethodChannel code.
