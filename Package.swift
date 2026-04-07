// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let baseURL = "https://github.com/amratef503092/ios-orange-sdk/releases/download/v2.0-spm"

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
                "GTMSessionFetcher",
                "GoogleToolboxForMac",
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
                "flutter_pdfview",
                "flutter_secure_storage",
                "geolocator_apple",
                "google_mlkit_commons",
                "google_mlkit_face_detection",
                "image_picker_ios",
                "libwebp",
                "network_info_plus",
                "open_settings_plus",
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
            checksum: "b5afb56983b8d73544645d8e7d743672a272ad99deae49422650d3783617dbde"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "\(baseURL)/Flutter.xcframework.zip",
            checksum: "1658a2522c35e1fb982706cbc02f060af33133f1d48d75c124d85d7ddde33321"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(baseURL)/CryptoSwift.xcframework.zip",
            checksum: "df3028b85aff5beacf0f0afdbf63ac015b7a965b923a7c9ee6bd524cfb3f2580"
        ),
        .binaryTarget(
            name: "DKImagePickerController",
            url: "\(baseURL)/DKImagePickerController.xcframework.zip",
            checksum: "9f1af7b84f19593d7b7f3b77e5d680073e23f80c7bc01f00b60006501deb6f35"
        ),
        .binaryTarget(
            name: "DKPhotoGallery",
            url: "\(baseURL)/DKPhotoGallery.xcframework.zip",
            checksum: "ae79468c5abd0b8b57a507cbdc14ad4b6a6a294e20f68641eba171ebaead3926"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "\(baseURL)/GTMSessionFetcher.xcframework.zip",
            checksum: "87ab38a2e9835ac4554eaa68d67ccb319e61c925a1f888da97a29d06ddd80517"
        ),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "\(baseURL)/GoogleToolboxForMac.xcframework.zip",
            checksum: "94246619a092b6569229e607e17f8f2851a003a91b024d463dcfe6440efcd427"
        ),
        .binaryTarget(
            name: "IOSSecuritySuite",
            url: "\(baseURL)/IOSSecuritySuite.xcframework.zip",
            checksum: "f431e3dbf7165d5c0bd40fdb6ad7ad330e70df7bfea3ef239d2b08a3655b97d8"
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
            checksum: "638218a4981953327132386600e1c8d34eb3a920d671c351e5851aec2770f179"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "\(baseURL)/SDWebImage.xcframework.zip",
            checksum: "3f088f046d58b721db92404f8852dfefea66e18b7ba6d93d287c2871e19e7ef1"
        ),
        .binaryTarget(
            name: "SDWebImageWebPCoder",
            url: "\(baseURL)/SDWebImageWebPCoder.xcframework.zip",
            checksum: "2e67edc8617ee06e08d090f050ef62a14d56e2003f18a7861b01b516f2a51f58"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "\(baseURL)/SwiftyGif.xcframework.zip",
            checksum: "88853b2c9eece37c290b181f8dcbb6d814244ce1cdfaabacfd1529852a08f550"
        ),
        .binaryTarget(
            name: "camera_avfoundation",
            url: "\(baseURL)/camera_avfoundation.xcframework.zip",
            checksum: "875aeded29d19d96b007e43915fc4dcec14fe4bbb2d0fd432e636e1d01025d82"
        ),
        .binaryTarget(
            name: "connectivity_plus",
            url: "\(baseURL)/connectivity_plus.xcframework.zip",
            checksum: "9f3c85807ec273c4a6c947fd85757d394fd978e16f279fec45caefe784cbf86d"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "\(baseURL)/device_info_plus.xcframework.zip",
            checksum: "a5c44da2b5b3ad17ced7964e87edb32f82960c2f7567560a4e6ec4bf2ae05da2"
        ),
        .binaryTarget(
            name: "file_picker",
            url: "\(baseURL)/file_picker.xcframework.zip",
            checksum: "c25945d132392571210703a93cbb9d3c37aa5bfd3dccf25ef999e54263ffe5e0"
        ),
        .binaryTarget(
            name: "flutter_image_compress_common",
            url: "\(baseURL)/flutter_image_compress_common.xcframework.zip",
            checksum: "4b0c02a7662829a6cdc7cf60f070f62fa2c4a80205943cc0f587e5af30aac43f"
        ),
        .binaryTarget(
            name: "flutter_liveness_detection_randomized_plugin",
            url: "\(baseURL)/flutter_liveness_detection_randomized_plugin.xcframework.zip",
            checksum: "803da868279d38149fc74d0ed274afd0109622f7122db463864aba436041dcaf"
        ),
        .binaryTarget(
            name: "flutter_pdfview",
            url: "\(baseURL)/flutter_pdfview.xcframework.zip",
            checksum: "d191d8cf30044cf53502115be7f5a97611e1110461ba9f41b6847002614be6a5"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "\(baseURL)/flutter_secure_storage.xcframework.zip",
            checksum: "4acd2cc236258fc6e89615032edd65b90f4661773d60ddee9004e66dab73aa01"
        ),
        .binaryTarget(
            name: "geolocator_apple",
            url: "\(baseURL)/geolocator_apple.xcframework.zip",
            checksum: "d985c617c514e7be013bebdae6a89a2a0306f5430f1d4e8161c983d55afcb0d3"
        ),
        .binaryTarget(
            name: "google_mlkit_commons",
            url: "\(baseURL)/google_mlkit_commons.xcframework.zip",
            checksum: "5a65b3c3acc75c83b4e4964298cd981c2cff5528b4d3e8d3fc65aa1ef61f1ae0"
        ),
        .binaryTarget(
            name: "google_mlkit_face_detection",
            url: "\(baseURL)/google_mlkit_face_detection.xcframework.zip",
            checksum: "ffda0977f760f6069515c17c92c3794840fa2ca72aa2fb0855179e39bc47d7e3"
        ),
        .binaryTarget(
            name: "image_picker_ios",
            url: "\(baseURL)/image_picker_ios.xcframework.zip",
            checksum: "3930e1a0774a058452fec7d807eec0bcf4fd1b87b1b8d09fa48faf3d82c022de"
        ),
        .binaryTarget(
            name: "libwebp",
            url: "\(baseURL)/libwebp.xcframework.zip",
            checksum: "cc4ce2de926d695abe8bc0d5100828aee2d4fa667c0f90d9e4cf2e4805acbef1"
        ),
        .binaryTarget(
            name: "network_info_plus",
            url: "\(baseURL)/network_info_plus.xcframework.zip",
            checksum: "8b18ebd26310be7aafb77aeec6820686d16548872809bdb5a46d8aebdccbeeaa"
        ),
        .binaryTarget(
            name: "open_settings_plus",
            url: "\(baseURL)/open_settings_plus.xcframework.zip",
            checksum: "8fb978ae2bb5bc12469bfa4b0dd2f53b6a76f06044f2b6346c16c5d40d3a8d95"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "\(baseURL)/path_provider_foundation.xcframework.zip",
            checksum: "c797337b3bfa1acd668a4b2e29b5b24167b50bc376e214133bb1fdc9e1a91262"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "\(baseURL)/permission_handler_apple.xcframework.zip",
            checksum: "7f123e2b1c3f3e02ff90b743c4e3ceab0847404f987ca5cd0ba3a2b154d7f1b7"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "\(baseURL)/shared_preferences_foundation.xcframework.zip",
            checksum: "e62c95c54f9def7afdc88d3c29d6054d4f2c011e507b8e708750e3995cd32f47"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "\(baseURL)/sqflite_darwin.xcframework.zip",
            checksum: "9fbe3f6342e1b8967fad63c07d0edafa3ab587fa853d6acdb45eade306964092"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "\(baseURL)/url_launcher_ios.xcframework.zip",
            checksum: "b2fb39c5dffb28ebe5a9be0332318f5ae2d6b680183505ab38a3444a8a1eb062"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "\(baseURL)/webview_flutter_wkwebview.xcframework.zip",
            checksum: "3d1c44b142d65fbb8d55ae1a0157085cedc47d22255146a64b509f2b6c02f319"
        ),
    ]
)
