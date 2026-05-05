// swift-tools-version: 5.7
import PackageDescription

let baseURL = "https://github.com/amratef503092/ios-orange-sdk/releases/download/v3.0-spm"

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

        .binaryTarget(
            name: "App",
            url: "\(baseURL)/App.xcframework.zip",
            checksum: "bfd045c42056a81c43dac7a262df1dca2a4a3eb9fd4b1475ed468837e7f72ee5"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(baseURL)/CryptoSwift.xcframework.zip",
            checksum: "5a42080320330f4bc47473147b44fee3f5e20655c8bf6607adcf1a35cb962ddc"
        ),
        .binaryTarget(
            name: "DKImagePickerController",
            url: "\(baseURL)/DKImagePickerController.xcframework.zip",
            checksum: "34c3738add4255625db9578f69276add9bd4c21b4ff4f0d4d35eef0f2834c191"
        ),
        .binaryTarget(
            name: "DKPhotoGallery",
            url: "\(baseURL)/DKPhotoGallery.xcframework.zip",
            checksum: "83f90289b41f5c956b33435746fe115c4889f3fac27438078484484a570fa05a"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "\(baseURL)/Flutter.xcframework.zip",
            checksum: "d8e3afb2bb3ecc6fcdcd38c029186a8a056f2e78cb80b7fb844868931d54d5e0"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "\(baseURL)/GTMSessionFetcher.xcframework.zip",
            checksum: "c4482b916fd03c519b1748c44f2b02aeaf6abe15cb88024adb7437b3869b55f0"
        ),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "\(baseURL)/GoogleToolboxForMac.xcframework.zip",
            checksum: "ba25e7917c7d336d3d4fb7cc7d11fcd9ede761fd8cf3d7c579be9b11feabb801"
        ),
        .binaryTarget(
            name: "IOSSecuritySuite",
            url: "\(baseURL)/IOSSecuritySuite.xcframework.zip",
            checksum: "c7e5aaca09858dca3ae4c15cab43f5482c0896b4fda6c0bb92218c686ec45d47"
        ),
        .binaryTarget(
            name: "MLImage",
            url: "\(baseURL)/MLImage.xcframework.zip",
            checksum: "88fe72977bfdfa14e35b97ca59e1bc0cab2c9d76a14e6037134ea4d8e246c2b7"
        ),
        .binaryTarget(
            name: "MLKitCommon",
            url: "\(baseURL)/MLKitCommon.xcframework.zip",
            checksum: "a188a3ba9f4bd352c5a305e20d7964f6cd9164d6671aadc572145c65cdbf72e2"
        ),
        .binaryTarget(
            name: "MLKitFaceDetection",
            url: "\(baseURL)/MLKitFaceDetection.xcframework.zip",
            checksum: "dca0312d18d6f4e122a971af880c4a46e9ba3cf673478c22209eb554b5458989"
        ),
        .binaryTarget(
            name: "MLKitVision",
            url: "\(baseURL)/MLKitVision.xcframework.zip",
            checksum: "0e48c40d8a77c880df5a2f32e71b2f39476f50f6eaeb7708e81d0675eaf49112"
        ),
        .binaryTarget(
            name: "Mantle",
            url: "\(baseURL)/Mantle.xcframework.zip",
            checksum: "4816cd078788ee2ac4704530e81c50dc497477aaea755cf454942fba27852ab8"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "\(baseURL)/SDWebImage.xcframework.zip",
            checksum: "eef07f0bf0c597fa8af9fd4b75492e81f0b6bc3cf9e4d57ed2bd7bc71ae7257d"
        ),
        .binaryTarget(
            name: "SDWebImageWebPCoder",
            url: "\(baseURL)/SDWebImageWebPCoder.xcframework.zip",
            checksum: "31f9b6bd56d3416313f7a63cfbfd8b362003efd3c3767cd96644b54d86795c1d"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "\(baseURL)/SwiftyGif.xcframework.zip",
            checksum: "49b178e6462d79b8d5c7cc62c76660ac0f00bc95bcd56f9f8321c7b97849f509"
        ),
        .binaryTarget(
            name: "camera_avfoundation",
            url: "\(baseURL)/camera_avfoundation.xcframework.zip",
            checksum: "6aa8cc952482d932353544d4ce78095eed04be841495b10a359380b518ee91fe"
        ),
        .binaryTarget(
            name: "connectivity_plus",
            url: "\(baseURL)/connectivity_plus.xcframework.zip",
            checksum: "2aafc1b8dd25109075dd7ade7d8706b9e0b4495cc128df52a1199511a4ae6c15"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "\(baseURL)/device_info_plus.xcframework.zip",
            checksum: "7419ec551a6994e779b2a58696b2110efda9a5ecf9e5ee5e97298eddbb94691b"
        ),
        .binaryTarget(
            name: "file_picker",
            url: "\(baseURL)/file_picker.xcframework.zip",
            checksum: "b05dd2357ac7fc147134126cefc5b8f4a7e0de5b2b1be87022ba60d89a6eb9b0"
        ),
        .binaryTarget(
            name: "flutter_image_compress_common",
            url: "\(baseURL)/flutter_image_compress_common.xcframework.zip",
            checksum: "45fd0df09cf300c12d53b60fd95179e3e373ea4d43c8fd007e7e8a1afc16f02d"
        ),
        .binaryTarget(
            name: "flutter_liveness_detection_randomized_plugin",
            url: "\(baseURL)/flutter_liveness_detection_randomized_plugin.xcframework.zip",
            checksum: "837bf229a67efec870846d70acd2607606cb0cfc799b4b10955832ad4f24a35a"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "\(baseURL)/flutter_secure_storage.xcframework.zip",
            checksum: "43307dfda9790382760e6d2be3ca094c56de88db5bfbeba90247565b3e76566c"
        ),
        .binaryTarget(
            name: "geolocator_apple",
            url: "\(baseURL)/geolocator_apple.xcframework.zip",
            checksum: "2961e28c85197885ddd03e1a698100c15847373dd1cfa95791c5bc5cafd72165"
        ),
        .binaryTarget(
            name: "google_mlkit_commons",
            url: "\(baseURL)/google_mlkit_commons.xcframework.zip",
            checksum: "db95dfb64cc084f17449836c4fbaa526b5b947d5f2d85b9d0fc401705f1824cf"
        ),
        .binaryTarget(
            name: "google_mlkit_face_detection",
            url: "\(baseURL)/google_mlkit_face_detection.xcframework.zip",
            checksum: "5e23b6664e80d0b90a56c8481b9dd1d4b7c9c9ea89f2ebed1841699f785f97b3"
        ),
        .binaryTarget(
            name: "image_picker_ios",
            url: "\(baseURL)/image_picker_ios.xcframework.zip",
            checksum: "1ae33bd0166fbfcb220ad4361c4ecf197ebc017a4ea56ebe123ad388f4fe8f5d"
        ),
        .binaryTarget(
            name: "libwebp",
            url: "\(baseURL)/libwebp.xcframework.zip",
            checksum: "0761aa57e11d350ec0021699aff2bfb48ebef3bd59f5e3eb1b8f44e167ab6a68"
        ),
        .binaryTarget(
            name: "network_info_plus",
            url: "\(baseURL)/network_info_plus.xcframework.zip",
            checksum: "ffcb012bcae9d75007cdf4f993280662c1cfec034aed33710f15376a6d8cbcb4"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "\(baseURL)/path_provider_foundation.xcframework.zip",
            checksum: "9fcb4eee3742ce5df25e0ff325c389dfc83ece9fcd8f8ba487587f63ae5b837f"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "\(baseURL)/permission_handler_apple.xcframework.zip",
            checksum: "e4057b8f9d18cb82e655ffbee864bbe212f06a8590f74703284d8bb399a49e27"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "\(baseURL)/shared_preferences_foundation.xcframework.zip",
            checksum: "7c0bffe0c958b929745f769fdfc40d554004b431b569b8a9de601b666ef1b64f"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "\(baseURL)/sqflite_darwin.xcframework.zip",
            checksum: "bf06c3f54373afbade806b64ff72366633988c74e77e06bb9204aa29940e77d8"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "\(baseURL)/url_launcher_ios.xcframework.zip",
            checksum: "24936860c4cc0ec634d48a6711bf77e983fc14cf3ead8ef20d45068f1a7497cd"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "\(baseURL)/webview_flutter_wkwebview.xcframework.zip",
            checksum: "8d004f3b792e5b2fe3251c24422657d72885a623056178ea4eab6a4a3b7df528"
        ),
    ]
)
