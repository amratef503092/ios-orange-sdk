// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let baseURL = "https://github.com/amratef503092/ios-orange-sdk/releases/download/v2.2-spm"

let package = Package(
    name: "BeltoneTrade",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BeltoneTrade",
            targets: ["BeltoneTradeWrapper"]
        ),
    ],
    targets: [
        // Wrapper target that pulls in all binary dependencies
        .target(
            name: "BeltoneTradeWrapper",
            dependencies: [
                "App",
                "Flutter",
                "CryptoSwift",
                "DKImagePickerController",
                "DKPhotoGallery",
                "FBLPromises",
                "GTMSessionFetcher",
                "GoogleDataTransport",
                "GoogleToolboxForMac",
                "GoogleUtilities",
                "IOSSecuritySuite",
                "MLImage",
                "MLKitCommon",
                "MLKitFaceDetection",
                "MLKitVision",
                "Mantle",
                "SDWebImage",
                "SDWebImageWebPCoder",
                "SwiftyGif",
                "camera_avfoundation",
                "connectivity_plus",
                "device_info_plus",
                "file_picker",
                "flutter_image_compress_common",
                "flutter_liveness_detection_randomized_plugin",
                "flutter_secure_storage",
                "geolocator_apple",
                "google_mlkit_commons",
                "google_mlkit_face_detection",
                "image_picker_ios",
                "libwebp",
                "nanopb",
                "network_info_plus",
                "path_provider_foundation",
                "permission_handler_apple",
                "shared_preferences_foundation",
                "sqflite_darwin",
                "url_launcher_ios",
                "webview_flutter_wkwebview",
            ],
            path: "Sources"
        ),

        // ── Binary targets ─────────────────────────────────────────────
        .binaryTarget(
            name: "App",
            url: "\(baseURL)/App.xcframework.zip",
            checksum: "b7895f0c79beee6ea4cd5c70893a8ebe6194b51f4871649395d4639081c57e82"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "\(baseURL)/Flutter.xcframework.zip",
            checksum: "98d744ab1b56260d1ac6e4431caba34a358f2eda56296ce8c8cc8d4d6785a457"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(baseURL)/CryptoSwift.xcframework.zip",
            checksum: "0b7d2f7728e08183a3b91338169f0567098a3fc29ffdf8b08def36088ed69fda"
        ),
        .binaryTarget(
            name: "DKImagePickerController",
            url: "\(baseURL)/DKImagePickerController.xcframework.zip",
            checksum: "08b2e0e8b5166b9ac5542072288f4ee3f2be1add67d8f592b51b6290528d65e9"
        ),
        .binaryTarget(
            name: "DKPhotoGallery",
            url: "\(baseURL)/DKPhotoGallery.xcframework.zip",
            checksum: "e9e2df79ba77a8dbd82fd6afeb6e41e3203ed0d9c95de84b4973fb3ee174ac04"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "\(baseURL)/FBLPromises.xcframework.zip",
            checksum: "90b343d4fa38934f3e03cee3c6d3e69dc7c59a85f8120554276cce241a8c9343"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "\(baseURL)/GTMSessionFetcher.xcframework.zip",
            checksum: "5475c910c43fafbbc3de8d4288c6df37f86d53f5714db32fb821bc0198b5e721"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "\(baseURL)/GoogleDataTransport.xcframework.zip",
            checksum: "5bb3d88ab739f4f3dc198aecfddc48117a267cc996ed38c656529808b8fc2914"
        ),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "\(baseURL)/GoogleToolboxForMac.xcframework.zip",
            checksum: "c9000d5fb571e40777d78876259400b5282209b80e9eb9388db7d2ca0625d315"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "\(baseURL)/GoogleUtilities.xcframework.zip",
            checksum: "88760b0e1db929bf09d984ca1b42b797718469c06adaf260c96d01f32c37d175"
        ),
        .binaryTarget(
            name: "IOSSecuritySuite",
            url: "\(baseURL)/IOSSecuritySuite.xcframework.zip",
            checksum: "29c01bd6573537836b8844c58438b569bec0d3e9be7606f12619716c7a587be7"
        ),
        .binaryTarget(
            name: "MLImage",
            url: "\(baseURL)/MLImage.xcframework.zip",
            checksum: "8307c4ef957463540ae9cc71a6058bd6328a0f4393fe7e3479180b0b31968dc8"
        ),
        .binaryTarget(
            name: "MLKitCommon",
            url: "\(baseURL)/MLKitCommon.xcframework.zip",
            checksum: "9afb304b68cc25e1471e8e189efa2835d83c858c3082c9787a19250bb7ca8146"
        ),
        .binaryTarget(
            name: "MLKitFaceDetection",
            url: "\(baseURL)/MLKitFaceDetection.xcframework.zip",
            checksum: "cbe86b0488d3e36c27cf52f551a60be88d9eaf7094d90adb8527930c3a6f7cdb"
        ),
        .binaryTarget(
            name: "MLKitVision",
            url: "\(baseURL)/MLKitVision.xcframework.zip",
            checksum: "7bf86d1490b03f65abd983b8b4cb17b48300e0917337f635058a7e41bae0f263"
        ),
        .binaryTarget(
            name: "Mantle",
            url: "\(baseURL)/Mantle.xcframework.zip",
            checksum: "dfab47636153d9f2d02a82302c1bf22c473bf2c3f4da9874dfd3f294f3a00b2d"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "\(baseURL)/SDWebImage.xcframework.zip",
            checksum: "48434dc0196f1f8cedb0dd1770a6d577e208f132f4b8e95b8d94c71bacd4f4f9"
        ),
        .binaryTarget(
            name: "SDWebImageWebPCoder",
            url: "\(baseURL)/SDWebImageWebPCoder.xcframework.zip",
            checksum: "251e1a5658f4b376dbc41d4fdbd7749495d8a362e97840aa0ddc11329e06076e"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "\(baseURL)/SwiftyGif.xcframework.zip",
            checksum: "441665cefe881526fdce0d6d9d1b170a81a592860e843709c25cb5327328b3c5"
        ),
        .binaryTarget(
            name: "camera_avfoundation",
            url: "\(baseURL)/camera_avfoundation.xcframework.zip",
            checksum: "d9f7f081260e87b5987c88cc6de7a43586ab4e542ab5ed1bdab6f5aa675214eb"
        ),
        .binaryTarget(
            name: "connectivity_plus",
            url: "\(baseURL)/connectivity_plus.xcframework.zip",
            checksum: "c1cc33b5df8f35832cdf4f58a353b0743264914a869fa5d42573a618699e5e7c"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "\(baseURL)/device_info_plus.xcframework.zip",
            checksum: "fbde5138cd6c85b64831559cf558de611fe69dad904a98b1f7afbdf56ca4e47f"
        ),
        .binaryTarget(
            name: "file_picker",
            url: "\(baseURL)/file_picker.xcframework.zip",
            checksum: "3d9f99da6510d43691f0af05051b413874aa1a5249b63105716ad6da546aebfc"
        ),
        .binaryTarget(
            name: "flutter_image_compress_common",
            url: "\(baseURL)/flutter_image_compress_common.xcframework.zip",
            checksum: "6ac0f5d3f436149150f953115ec8c31072a6e687d6523867f09903fb608b9ddb"
        ),
        .binaryTarget(
            name: "flutter_liveness_detection_randomized_plugin",
            url: "\(baseURL)/flutter_liveness_detection_randomized_plugin.xcframework.zip",
            checksum: "9aeb15a59a3571d80b3421eefc3d62f1bdf822b5da7a1b9cedd0cad2254c769d"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "\(baseURL)/flutter_secure_storage.xcframework.zip",
            checksum: "dd8c40814933bee28d0c4cede986380b0c618b8ce54fad4bfb80b012af5126d5"
        ),
        .binaryTarget(
            name: "geolocator_apple",
            url: "\(baseURL)/geolocator_apple.xcframework.zip",
            checksum: "6e84083d8b60b63f1d3dd5d9b8ec572c47a5bb8ffae4e27e530564f8f0bccb59"
        ),
        .binaryTarget(
            name: "google_mlkit_commons",
            url: "\(baseURL)/google_mlkit_commons.xcframework.zip",
            checksum: "95e17d69c6d1dd19fdedc4ca4214c487e734f6b74fd970d380555803cc1f197e"
        ),
        .binaryTarget(
            name: "google_mlkit_face_detection",
            url: "\(baseURL)/google_mlkit_face_detection.xcframework.zip",
            checksum: "7f66b7e9bbb8f32942a6088c8faff8b5501d4c108f3d115460334ce733165069"
        ),
        .binaryTarget(
            name: "image_picker_ios",
            url: "\(baseURL)/image_picker_ios.xcframework.zip",
            checksum: "16a586e9a863bfc2a64aa62043e14f202216e19733ee25d8038d8e62fd770b2e"
        ),
        .binaryTarget(
            name: "libwebp",
            url: "\(baseURL)/libwebp.xcframework.zip",
            checksum: "8ce9a1dba77cb7f9891f9c4f0fe4ab8a97145f9d833fdda729e4a2239730ebef"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "\(baseURL)/nanopb.xcframework.zip",
            checksum: "3c38bfccec39bde977974d283bf3a5a0f35a459b0aabd7c205d9a661cd5c96c4"
        ),
        .binaryTarget(
            name: "network_info_plus",
            url: "\(baseURL)/network_info_plus.xcframework.zip",
            checksum: "7f9777faede6fe0615ee0e7b1c753582efa09f09f0c6dcfbf6e8f3d962c6e282"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "\(baseURL)/path_provider_foundation.xcframework.zip",
            checksum: "1d4db0a1518ce4b2aad6789d9241ec4b600342e720675f162784b92802622878"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "\(baseURL)/permission_handler_apple.xcframework.zip",
            checksum: "51b2c8a6c9aa4d174e131d032712df6b96560522c1f5d24876281af6793f7967"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "\(baseURL)/shared_preferences_foundation.xcframework.zip",
            checksum: "b3697deb900332d91f9f7903ec47bb0c3fa5d93eca8f2b4f73f34e7d10f7936a"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "\(baseURL)/sqflite_darwin.xcframework.zip",
            checksum: "3719a8dd9ca893f48136c72576f5854bd1d1bdd1ea4ecc8062e7aa9852678574"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "\(baseURL)/url_launcher_ios.xcframework.zip",
            checksum: "d3f0b7ccaa4d6620df27a3ab52bd4346d185cece5cd97986a41362c446ba5048"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "\(baseURL)/webview_flutter_wkwebview.xcframework.zip",
            checksum: "00997e6a886af76e55dcdd965fc365f6809755c72c7bf5b6864311ed805988c3"
        ),
    ]
)
