// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let baseURL = "https://github.com/amratef503092/ios-orange-sdk/releases/download/v2.1-spm"

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
            checksum: "8fe0cbf6f96bfab4ede6bd34db7dbe5533fd84d798f53c1bd39f02775b7fff02"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "\(baseURL)/Flutter.xcframework.zip",
            checksum: "21a138a157dc02e403342792c88e72889fa6bb2fc4f6734b2c3be59a278c85ef"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(baseURL)/CryptoSwift.xcframework.zip",
            checksum: "f5611c9e307bb07900648b3d297b1ff7576952be1509e132c98c343658efbeae"
        ),
        .binaryTarget(
            name: "DKImagePickerController",
            url: "\(baseURL)/DKImagePickerController.xcframework.zip",
            checksum: "8812d1452ad231f1d712aec774e0681026fceece1a23cc646915cec046458d5e"
        ),
        .binaryTarget(
            name: "DKPhotoGallery",
            url: "\(baseURL)/DKPhotoGallery.xcframework.zip",
            checksum: "a2b2071f4f4e66875a5fddd7d6879356003b0b2b54ee677893fe2af7975d1d68"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "\(baseURL)/FBLPromises.xcframework.zip",
            checksum: "1a3e0594fc940adc60d425d46aebcb10ec44140f66853764d626329590f3e1ed"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "\(baseURL)/GTMSessionFetcher.xcframework.zip",
            checksum: "eaafe76f83ff028650a2e09e4d9be16eff372ac673243599d7b784e8d81dc447"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "\(baseURL)/GoogleDataTransport.xcframework.zip",
            checksum: "600d196507c7973ea12003e149c08417b1d103b158a367f4ebdbd574bcc23fae"
        ),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "\(baseURL)/GoogleToolboxForMac.xcframework.zip",
            checksum: "6b8808abd7235a4fa5b39a8b2fc73d5bdf6c2f9afe634dc19e49361c60d929b4"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "\(baseURL)/GoogleUtilities.xcframework.zip",
            checksum: "7f528142505fe6dc9ad6a328b3f0852032d0cd276b4e04b2098c4aaecf6ee162"
        ),
        .binaryTarget(
            name: "IOSSecuritySuite",
            url: "\(baseURL)/IOSSecuritySuite.xcframework.zip",
            checksum: "bdf0e6b85eac0f9e6e9ba418226e932589d7973e5df6df4bb6aeca5ab6f5cd53"
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
            checksum: "a52e978b12b897daae8f65579e4f31c20e1dbb65968811cfb8aafc0765f6c2b2"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "\(baseURL)/SDWebImage.xcframework.zip",
            checksum: "75ef4ed1d4714aa8622317eef8379bc00ef542a2a829fa5c61a637d0ca0e7327"
        ),
        .binaryTarget(
            name: "SDWebImageWebPCoder",
            url: "\(baseURL)/SDWebImageWebPCoder.xcframework.zip",
            checksum: "5547875eca80738b0c6596625a81fc77b76535bb855d2b506a43818b36c8f03a"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "\(baseURL)/SwiftyGif.xcframework.zip",
            checksum: "cb88b7f01f8a89c00074b5560dceac27fd5719315a217b82f4d86e89ef4942fa"
        ),
        .binaryTarget(
            name: "camera_avfoundation",
            url: "\(baseURL)/camera_avfoundation.xcframework.zip",
            checksum: "27e23f0426bb0961c2bf30c021c62e7c6d604a54808c8c8eb7e5b167b82e6d01"
        ),
        .binaryTarget(
            name: "connectivity_plus",
            url: "\(baseURL)/connectivity_plus.xcframework.zip",
            checksum: "2602a70968c96cfd81f4caaedff351acc9911adbdd861fc0836f6f82b0cf8c7d"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "\(baseURL)/device_info_plus.xcframework.zip",
            checksum: "7e37a2e26fc09a894f27c143ccbdb04828215589f2adf177af75e4537e8f02cc"
        ),
        .binaryTarget(
            name: "file_picker",
            url: "\(baseURL)/file_picker.xcframework.zip",
            checksum: "754f3f48d81e7c5c5a5bb938808bfb3cfaca642692aff6d80849bf890ad25272"
        ),
        .binaryTarget(
            name: "flutter_image_compress_common",
            url: "\(baseURL)/flutter_image_compress_common.xcframework.zip",
            checksum: "98e3472ef88268191191f0aabf0ddaa4cdfe9d9f11b83b4081047cfc02c07aea"
        ),
        .binaryTarget(
            name: "flutter_liveness_detection_randomized_plugin",
            url: "\(baseURL)/flutter_liveness_detection_randomized_plugin.xcframework.zip",
            checksum: "3897c9e48b6bf634bd7a73ec82a1e2df4f1a68d97a3c3b527c44d6c2571bab3b"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "\(baseURL)/flutter_secure_storage.xcframework.zip",
            checksum: "f8eca105478b6523dd6c90fef6e8475f082b006aedb6d2b929ba2214f7b2412b"
        ),
        .binaryTarget(
            name: "geolocator_apple",
            url: "\(baseURL)/geolocator_apple.xcframework.zip",
            checksum: "d9d4867577aa486b282019d2aebbbbecb4239574f58279e5918bba01063faf37"
        ),
        .binaryTarget(
            name: "google_mlkit_commons",
            url: "\(baseURL)/google_mlkit_commons.xcframework.zip",
            checksum: "be4e15b459c9da2643ba887d8dbce7c48f8ae9c7f98545fe9f9a6209869cb8af"
        ),
        .binaryTarget(
            name: "google_mlkit_face_detection",
            url: "\(baseURL)/google_mlkit_face_detection.xcframework.zip",
            checksum: "01cbca72568a31b91d86e258b2287d4075fc88871c5d647f5acbf1ab5b6cd855"
        ),
        .binaryTarget(
            name: "image_picker_ios",
            url: "\(baseURL)/image_picker_ios.xcframework.zip",
            checksum: "cc86a169b8782717e16814ed72e98dce051bdf8cf6a8bb1c8b3bc27d937430fa"
        ),
        .binaryTarget(
            name: "libwebp",
            url: "\(baseURL)/libwebp.xcframework.zip",
            checksum: "2ee13b8b66cfe2a1429f629b763dad28b77a3722d508d44c8c1ce283290a63c1"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "\(baseURL)/nanopb.xcframework.zip",
            checksum: "cf34c73bedda89133d3e6e769ac15234ddb53a8f1b5e0f91a9a376ab97dbf51d"
        ),
        .binaryTarget(
            name: "network_info_plus",
            url: "\(baseURL)/network_info_plus.xcframework.zip",
            checksum: "714480b882a87111db9e6d537add95dfff18ef07596058da22a2ee791d6c42b8"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "\(baseURL)/path_provider_foundation.xcframework.zip",
            checksum: "99618021f852d1f9139f96f96a01b31f793bf9c0ec39685f00599afc87be3eec"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "\(baseURL)/permission_handler_apple.xcframework.zip",
            checksum: "cc6e1c97b9dfacebb4059475b549d4521c9f361d153eb22bd4180f86ec215f7d"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "\(baseURL)/shared_preferences_foundation.xcframework.zip",
            checksum: "f0e2347a62563cdd13454faa21ed3dc6f42b718e1d24bb21d2883d5cc9ded1a5"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "\(baseURL)/sqflite_darwin.xcframework.zip",
            checksum: "f81710f0f14d4310c7ffd97d85033370eedfdc93f09fda24ee7672950e4976d7"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "\(baseURL)/url_launcher_ios.xcframework.zip",
            checksum: "c21702080c31c5fe93ae58694556bc161d8f0b5f1a765540582c487bf46e06d1"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "\(baseURL)/webview_flutter_wkwebview.xcframework.zip",
            checksum: "3d167e34f897ab7d65747d6a5df67fd43d0a1f70040c32915de129a4ce4c4a10"
        ),
    ]
)
