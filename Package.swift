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
            checksum: "0e7874a7333ca39be8e7a030c392bfdabdd3760721ce1c47e9dbbf83fc49b7da"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "\(baseURL)/Flutter.xcframework.zip",
            checksum: "503f14783751a454e14196ad61b85fb6e87ab6b320e569e8eaa75b2b6ce2aedd"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(baseURL)/CryptoSwift.xcframework.zip",
            checksum: "4cc387e5891c8b2d0b7eb555f1729bd84218b4551dedab8f688fee1de3a2a51e"
        ),
        .binaryTarget(
            name: "DKImagePickerController",
            url: "\(baseURL)/DKImagePickerController.xcframework.zip",
            checksum: "2604a4eb3f293f0d5b0cbca9c6a1e6793a916420ee42c29aa7ada0dd638f319f"
        ),
        .binaryTarget(
            name: "DKPhotoGallery",
            url: "\(baseURL)/DKPhotoGallery.xcframework.zip",
            checksum: "a8e68c5801a65f46834b52ed0fae89ccdbc9953749da3fa34cfbae640b81004d"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "\(baseURL)/FBLPromises.xcframework.zip",
            checksum: "7bbd83a8626c5b2dec51705e4d1cb5f1caa4a623de98f45ba6e0e9ea11390ffa"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "\(baseURL)/GTMSessionFetcher.xcframework.zip",
            checksum: "ccc1611d37d7268f9ad75009defe01a8ca2ed2bb825045744665b7b186855aec"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "\(baseURL)/GoogleDataTransport.xcframework.zip",
            checksum: "6050608dcc8a15011c38ec1e1e90cada609fac3b1f53ef1c98efd72d6dd143f7"
        ),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "\(baseURL)/GoogleToolboxForMac.xcframework.zip",
            checksum: "28c5c009d2f2c8128d2b8f2a7e62ecf3a99b2e6881d88de690569e929d7166a4"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "\(baseURL)/GoogleUtilities.xcframework.zip",
            checksum: "f4955e50945afa8eebea7bf9283683090fb6764e2f098b2c22e8706860986b45"
        ),
        .binaryTarget(
            name: "IOSSecuritySuite",
            url: "\(baseURL)/IOSSecuritySuite.xcframework.zip",
            checksum: "9fcd0e1d58c16752821416f02d03a89c5bd9f389bd2f44b5e4c9f789e4394f8d"
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
            checksum: "342aa509beb3f6e1c9299594446cff011e28050508b72e3b8d1094c666bb83d4"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "\(baseURL)/SDWebImage.xcframework.zip",
            checksum: "476a7cc064ff40c3db71c44a05d71ed5e0dbf99ca86a2e6b7efed148ac30ad6e"
        ),
        .binaryTarget(
            name: "SDWebImageWebPCoder",
            url: "\(baseURL)/SDWebImageWebPCoder.xcframework.zip",
            checksum: "a4e69011b7fb05509897633af2d744a592a84c6b2be7a41a1a981f98e2f6d692"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "\(baseURL)/SwiftyGif.xcframework.zip",
            checksum: "22fbf01bda040c39ef062165b30585377f1afb5a7687033c6da905df2585fc78"
        ),
        .binaryTarget(
            name: "camera_avfoundation",
            url: "\(baseURL)/camera_avfoundation.xcframework.zip",
            checksum: "2870067a49e6212f60f090f6185e162b1f1b9a6ae2935c4c1f1a1ef8acdc976c"
        ),
        .binaryTarget(
            name: "connectivity_plus",
            url: "\(baseURL)/connectivity_plus.xcframework.zip",
            checksum: "c5a26145ad9d56a9bc99645421538ecde734289d29add3c8888d9ca70a41bc87"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "\(baseURL)/device_info_plus.xcframework.zip",
            checksum: "6b5275d805b9906fb5e3fb5fc44cbd444373104441c89c777955fbdd37a444d8"
        ),
        .binaryTarget(
            name: "file_picker",
            url: "\(baseURL)/file_picker.xcframework.zip",
            checksum: "3cc4f3bd0bd527d293afd96e193baa6cb326f68cc3d946daee0755777ea9f74c"
        ),
        .binaryTarget(
            name: "flutter_image_compress_common",
            url: "\(baseURL)/flutter_image_compress_common.xcframework.zip",
            checksum: "a8314c486942996a3e57e325fabc73935819b3322ba32d73b30e9b28b1c9c764"
        ),
        .binaryTarget(
            name: "flutter_liveness_detection_randomized_plugin",
            url: "\(baseURL)/flutter_liveness_detection_randomized_plugin.xcframework.zip",
            checksum: "617e2a90480faf4fabc03da954e6a2cdf7ea1b2970ddec0cc97747dc21bc3731"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "\(baseURL)/flutter_secure_storage.xcframework.zip",
            checksum: "2f4972c34866b7e6ceb0e37900eb4f11061d39b90dc4b7c808fccfe415c8d399"
        ),
        .binaryTarget(
            name: "geolocator_apple",
            url: "\(baseURL)/geolocator_apple.xcframework.zip",
            checksum: "1f9a6aad1826c22858282b1a5e9fda332dd0b281bb65ff2cd7f07d528c17562d"
        ),
        .binaryTarget(
            name: "google_mlkit_commons",
            url: "\(baseURL)/google_mlkit_commons.xcframework.zip",
            checksum: "100a4c459278216b4419823e176e976acee1d6aeb5064755b11970fe24075602"
        ),
        .binaryTarget(
            name: "google_mlkit_face_detection",
            url: "\(baseURL)/google_mlkit_face_detection.xcframework.zip",
            checksum: "7a23e327ec733e06326bbfb6b25846f8588a6d2aadeda6a6013e3366e92735dd"
        ),
        .binaryTarget(
            name: "image_picker_ios",
            url: "\(baseURL)/image_picker_ios.xcframework.zip",
            checksum: "839ae4cca2ac072b1a1d981a1854437973f10a43e039002d89857d933f8f82f9"
        ),
        .binaryTarget(
            name: "libwebp",
            url: "\(baseURL)/libwebp.xcframework.zip",
            checksum: "58e4afe490f674577f291e94213a0450baab89207c565bdbb21b0bd1851e9ad9"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "\(baseURL)/nanopb.xcframework.zip",
            checksum: "118419618f73e8819dbc47d3e5410a401a52706b4e0d03c5a2cc70fb42b311c3"
        ),
        .binaryTarget(
            name: "network_info_plus",
            url: "\(baseURL)/network_info_plus.xcframework.zip",
            checksum: "4d19b45666e0b3ce04f57b82e9579369710d1d1bfe05522863cb2ab00d6e627e"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "\(baseURL)/path_provider_foundation.xcframework.zip",
            checksum: "5f3287e569f9e72467ed9edf84067abe6736f58b81436ae5b7d0180922072e2f"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "\(baseURL)/permission_handler_apple.xcframework.zip",
            checksum: "0c26b13b7478a868436113999616937538a22dec1d0788adcf32b5a15d1e03b2"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "\(baseURL)/shared_preferences_foundation.xcframework.zip",
            checksum: "e21ea78f19de2586c1c1738d041ce8dd46c383a0528f1d482ea63c83fdfb4160"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "\(baseURL)/sqflite_darwin.xcframework.zip",
            checksum: "268839303baf351d9ff3ff57f5b041f9af9c9fe89f57372f416e5b48d9906846"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "\(baseURL)/url_launcher_ios.xcframework.zip",
            checksum: "98415072a9c6a664aaeb52bc4980aa407f454b8a79f34393235c4846a457d6bd"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "\(baseURL)/webview_flutter_wkwebview.xcframework.zip",
            checksum: "62d8d2113604d687f5100b92d8ce625bdc6c8ba78d131e492e6dd79f1058a3f8"
        ),
    ]
)
