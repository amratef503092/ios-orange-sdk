// swift-tools-version: 5.7
import PackageDescription

let baseURL = "https://github.com/amratef503092/ios-orange-sdk/releases/download/v6.0-spm"

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
        .target(
            name: "BeltoneTradeWrapper",
            dependencies: [
                "App",
                "CryptoSwift",
                "DKImagePickerController",
                "DKPhotoGallery",
                "Flutter",
                "GTMSessionFetcher",
                "GoogleToolboxForMac",
                "IOSSecuritySuite",
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
                "network_info_plus",
                "open_filex",
                "package_info_plus",
                "path_provider_foundation",
                "permission_handler_apple",
                "sensors_plus",
                "share_plus",
                "shared_preferences_foundation",
                "sqflite_darwin",
                "url_launcher_ios",
                "webview_flutter_wkwebview",
            ],
            path: "Sources"
        ),

        .binaryTarget(
            name: "App",
            url: "\(baseURL)/App.xcframework.zip",
            checksum: "5b8558e9c2b8447e6cf23eb8441bbf4d4f9b8c5bbf147027c21ece74b307258c"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(baseURL)/CryptoSwift.xcframework.zip",
            checksum: "e0f379b6b7630982568981f288bbef1b89bbf24138f6acf765f279fba7d5c8ee"
        ),
        .binaryTarget(
            name: "DKImagePickerController",
            url: "\(baseURL)/DKImagePickerController.xcframework.zip",
            checksum: "370c2979ac3d0b1a2dc9116aabf34a26a0b396b29b5c0b6173c7e0177b5b48ae"
        ),
        .binaryTarget(
            name: "DKPhotoGallery",
            url: "\(baseURL)/DKPhotoGallery.xcframework.zip",
            checksum: "a11aa79372fab09b3db2d66400ebaa7a45430ba207614b0837324f44e38b90f9"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "\(baseURL)/Flutter.xcframework.zip",
            checksum: "8f365251de538c16f1389e1be2f6932e9e6482f33040d01635e636b14d8690b1"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "\(baseURL)/GTMSessionFetcher.xcframework.zip",
            checksum: "8d969ed842e7eafc27214e200c81ea9fc319e1741685786b9f2b45b32f0dbb41"
        ),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "\(baseURL)/GoogleToolboxForMac.xcframework.zip",
            checksum: "98c4ec7094d5002e12e064fd51a830b443c9cd04b0b249d73292b0aedb2e9274"
        ),
        .binaryTarget(
            name: "IOSSecuritySuite",
            url: "\(baseURL)/IOSSecuritySuite.xcframework.zip",
            checksum: "ca631d6056b1626d1be9e86237d483b30998b866d582ec003927cd887b09557e"
        ),
        .binaryTarget(
            name: "Mantle",
            url: "\(baseURL)/Mantle.xcframework.zip",
            checksum: "2ba0c0dfdb951fde142c9e4753ac07e22b46089172befebaf44f3b62d75611da"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "\(baseURL)/SDWebImage.xcframework.zip",
            checksum: "c3781e6b0f501834532b9103b2f03dd7fa4d0463f5a17729fe9372a349ddf4f0"
        ),
        .binaryTarget(
            name: "SDWebImageWebPCoder",
            url: "\(baseURL)/SDWebImageWebPCoder.xcframework.zip",
            checksum: "bf49e384619728d932056376165c42ca3625a8cc41a9f4ccc45398fd24e1000c"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "\(baseURL)/SwiftyGif.xcframework.zip",
            checksum: "53383a17f9f4e819db43adecd396a6691d51e7c44c46131536be626e7577e644"
        ),
        .binaryTarget(
            name: "camera_avfoundation",
            url: "\(baseURL)/camera_avfoundation.xcframework.zip",
            checksum: "5be5f7ff2d5f88663cdd421405429e67ebfb32e4fac34521a0a9f4f429ef1a9c"
        ),
        .binaryTarget(
            name: "connectivity_plus",
            url: "\(baseURL)/connectivity_plus.xcframework.zip",
            checksum: "4a645244eab14b9808073f2218dfe8292b639a6973b657300b1ac7d3a9049239"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "\(baseURL)/device_info_plus.xcframework.zip",
            checksum: "78a1e0354d2c27a385286654e7f39b64d4691a35d660451514f22f88ffc58efa"
        ),
        .binaryTarget(
            name: "file_picker",
            url: "\(baseURL)/file_picker.xcframework.zip",
            checksum: "77e2745e09140facee0afb89feb64c1f6f2e80ef40ed8ee5fd587d595437282c"
        ),
        .binaryTarget(
            name: "flutter_image_compress_common",
            url: "\(baseURL)/flutter_image_compress_common.xcframework.zip",
            checksum: "003839bbf711335e80c7cf4b3eb09820bdf95d19c11f30be1dbe10253bdbbf00"
        ),
        .binaryTarget(
            name: "flutter_liveness_detection_randomized_plugin",
            url: "\(baseURL)/flutter_liveness_detection_randomized_plugin.xcframework.zip",
            checksum: "2648117d6fe26e5e17080bdf1f9e820d48e98f04495b4fa954ae8e27487c33d4"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "\(baseURL)/flutter_secure_storage.xcframework.zip",
            checksum: "8fbe7696da9a967ac6a18dbb3438a6fb26ab7328481b3758bb0bbcb664340544"
        ),
        .binaryTarget(
            name: "geolocator_apple",
            url: "\(baseURL)/geolocator_apple.xcframework.zip",
            checksum: "b0a8665afb6a81dc9418d68b1c501cda689fac319e40d6a12622ae9bde6f54ba"
        ),
        .binaryTarget(
            name: "google_mlkit_commons",
            url: "\(baseURL)/google_mlkit_commons.xcframework.zip",
            checksum: "2649aaed65c2a40492e6a9d88552765a7f4fc37f508461b1a27a1ae8e2965d15"
        ),
        .binaryTarget(
            name: "google_mlkit_face_detection",
            url: "\(baseURL)/google_mlkit_face_detection.xcframework.zip",
            checksum: "1c82b6dceeaa90abe1cfeaafb1c72893803c50bb9c493b622c1e758b25a8a481"
        ),
        .binaryTarget(
            name: "image_picker_ios",
            url: "\(baseURL)/image_picker_ios.xcframework.zip",
            checksum: "8ccaffe3f84e4e8e074d70624a603bb591f4eb251d479e0277bffea0240238d0"
        ),
        .binaryTarget(
            name: "libwebp",
            url: "\(baseURL)/libwebp.xcframework.zip",
            checksum: "290d268875535704227b1a30e88a7a2f90383ba64c81acda2e467c88f8943247"
        ),
        .binaryTarget(
            name: "network_info_plus",
            url: "\(baseURL)/network_info_plus.xcframework.zip",
            checksum: "98587c1b892c3d4ca20f3e8b167a81cae6be063779c219fae1b191ba606b2f5a"
        ),
        .binaryTarget(
            name: "open_filex",
            url: "\(baseURL)/open_filex.xcframework.zip",
            checksum: "6bacb9538d43fdc4b114dc76543d876dc0a41b668fc95d4af51d6be92f71459b"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "\(baseURL)/package_info_plus.xcframework.zip",
            checksum: "0e47e7e67d61766d9d85594c3c7a5e264cefc28f4ce7cd8c87f008b655b7e431"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "\(baseURL)/path_provider_foundation.xcframework.zip",
            checksum: "28830dff67c2db381e6f72f05a77a4a70c7a41472d8eb01efb9156e74129387e"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "\(baseURL)/permission_handler_apple.xcframework.zip",
            checksum: "cbf3ddaa73476bf7f8574140320768c967ebcba4154104d0f477caece947e3ff"
        ),
        .binaryTarget(
            name: "sensors_plus",
            url: "\(baseURL)/sensors_plus.xcframework.zip",
            checksum: "b75540df03b4cc721fc5f088e8ab7df5e242c0b91eb8d82faffa320eae19d432"
        ),
        .binaryTarget(
            name: "share_plus",
            url: "\(baseURL)/share_plus.xcframework.zip",
            checksum: "a320cf889c235c801ecac6cc2bc3a7fbc468b220366e6660b9e5332e2bcbcb09"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "\(baseURL)/shared_preferences_foundation.xcframework.zip",
            checksum: "7caa012041143b0878ee5c512e8603fe7caf257e384aec483752b6b61e5237e6"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "\(baseURL)/sqflite_darwin.xcframework.zip",
            checksum: "33330ff0b992b63ce45ea01e5c8eab8429eaf40c7fcf99989d577d08c65f031a"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "\(baseURL)/url_launcher_ios.xcframework.zip",
            checksum: "3cb294df57e2a6acba076004afce549a26ae831560abe841917ee03478c19a83"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "\(baseURL)/webview_flutter_wkwebview.xcframework.zip",
            checksum: "d6f45d3393e13cda099f283121aa6699d3037fc05685a7f07e2047ac85c709d9"
        ),
    ]
)
