// swift-tools-version: 5.7
import PackageDescription

let baseURL = "https://github.com/amratef503092/ios-orange-sdk/releases/download/v7.0-spm"

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
            checksum: "9539c7d8458ca46c9489e2b981794e2cd7678d04733bfdd38dd1381afa90e537"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(baseURL)/CryptoSwift.xcframework.zip",
            checksum: "ca88f6334b7d7d13ea46cd163446a297f56197501eeb87044ca1e9720b76eb42"
        ),
        .binaryTarget(
            name: "DKImagePickerController",
            url: "\(baseURL)/DKImagePickerController.xcframework.zip",
            checksum: "7d7b8231a8459adcf834d3cb0048f467f2a44b368518759848ddbb3a4105bad5"
        ),
        .binaryTarget(
            name: "DKPhotoGallery",
            url: "\(baseURL)/DKPhotoGallery.xcframework.zip",
            checksum: "9d640dc5f4865f4b1686042558695e19578444e08d135a8a069a9cf7c2c3264b"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "\(baseURL)/Flutter.xcframework.zip",
            checksum: "db6e073108fcfc8e77106aecbd17e2b8799f5a25ad5e298ccedf4b14f13e8b4f"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "\(baseURL)/GTMSessionFetcher.xcframework.zip",
            checksum: "6144e67291d1ea51f44484e8f3c93d929fd178465bed341f4db004294b144456"
        ),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "\(baseURL)/GoogleToolboxForMac.xcframework.zip",
            checksum: "8cdf6c8b092a4c7dd884fb7ebc98ed9408bde584b0604ac97f4fc26a2a44414d"
        ),
        .binaryTarget(
            name: "IOSSecuritySuite",
            url: "\(baseURL)/IOSSecuritySuite.xcframework.zip",
            checksum: "d10ec4a33171e7e52c1dd2bd2141795ad542cd3c0491948ce869202fbf48d290"
        ),
        .binaryTarget(
            name: "Mantle",
            url: "\(baseURL)/Mantle.xcframework.zip",
            checksum: "487f5fff8925cefc2245892ff6a47f1f8d3135d9888a0ec81f4f9a53edb7c42c"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "\(baseURL)/SDWebImage.xcframework.zip",
            checksum: "5b88814c718a3aaf99cb45b1934f56052e1e88f9bbdeee680fba8a5b1b5985d4"
        ),
        .binaryTarget(
            name: "SDWebImageWebPCoder",
            url: "\(baseURL)/SDWebImageWebPCoder.xcframework.zip",
            checksum: "f222b112eb806ea87640f8cb3199ad309fc49bedaea11f88449039aa5fabbca4"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "\(baseURL)/SwiftyGif.xcframework.zip",
            checksum: "eebeb9c863d1501c0fe11290ffca1e684ad7c4ee507ebd2bb5b288b942c5680e"
        ),
        .binaryTarget(
            name: "camera_avfoundation",
            url: "\(baseURL)/camera_avfoundation.xcframework.zip",
            checksum: "4a71b5f52a27dbe077a0bce8f70adbbcecfdf1ea46a4333353c40d6a2ae3f404"
        ),
        .binaryTarget(
            name: "connectivity_plus",
            url: "\(baseURL)/connectivity_plus.xcframework.zip",
            checksum: "885f2f133884503d927dc21a200c47eb089c648cb9bccf15fc860c4b07182b3d"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "\(baseURL)/device_info_plus.xcframework.zip",
            checksum: "1bb0215f317b40b5ef53425e2913d889bf9be2792c2f2645f2d60d432ac845cd"
        ),
        .binaryTarget(
            name: "file_picker",
            url: "\(baseURL)/file_picker.xcframework.zip",
            checksum: "3c171f2b0aeca5bba1b9d5c425debc5e5b53e9693100aa407b97c5affcb76745"
        ),
        .binaryTarget(
            name: "flutter_image_compress_common",
            url: "\(baseURL)/flutter_image_compress_common.xcframework.zip",
            checksum: "dedc40584fd898eeb6b4a4159c04f5c173ae6aa9eba14df7cc570138282b6a75"
        ),
        .binaryTarget(
            name: "flutter_liveness_detection_randomized_plugin",
            url: "\(baseURL)/flutter_liveness_detection_randomized_plugin.xcframework.zip",
            checksum: "cd0cf07473dbcb58aefc7d688d5c7760fe04d89178111028bd56e3dc4651908c"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "\(baseURL)/flutter_secure_storage.xcframework.zip",
            checksum: "b00f43315ff3bd3524bdf5d3890200d7600bad555c66381f740f247e8ac33827"
        ),
        .binaryTarget(
            name: "geolocator_apple",
            url: "\(baseURL)/geolocator_apple.xcframework.zip",
            checksum: "c5addc7feb5e35a120d98a796f76c19cba9066b9473c4b5836548efde922e80f"
        ),
        .binaryTarget(
            name: "google_mlkit_commons",
            url: "\(baseURL)/google_mlkit_commons.xcframework.zip",
            checksum: "5069b7064802a0291ff421c59c213c11403d76b4c6661187f786c767f200af2f"
        ),
        .binaryTarget(
            name: "google_mlkit_face_detection",
            url: "\(baseURL)/google_mlkit_face_detection.xcframework.zip",
            checksum: "be7fd24af41f23b71bf419cc72302b8933468f9563fc775ad1eeb049f590d755"
        ),
        .binaryTarget(
            name: "image_picker_ios",
            url: "\(baseURL)/image_picker_ios.xcframework.zip",
            checksum: "46f71f9a9bb9a17cb5433b9135c60f0889689249ebec880bf100df252437de87"
        ),
        .binaryTarget(
            name: "libwebp",
            url: "\(baseURL)/libwebp.xcframework.zip",
            checksum: "fa945505444872537aa26566404af3d0ea2d7350f43fe6926c2dc4aa98f5904f"
        ),
        .binaryTarget(
            name: "network_info_plus",
            url: "\(baseURL)/network_info_plus.xcframework.zip",
            checksum: "6ad26babcfaa612508f51897aed0d8e1dca0649fbee1f12e8660b1bacc836337"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "\(baseURL)/path_provider_foundation.xcframework.zip",
            checksum: "399a566cc099a005b4fd67f70b207b8d48c7ddceea778f4a98803dee3a822da4"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "\(baseURL)/permission_handler_apple.xcframework.zip",
            checksum: "86595cee6e927f65e1aee472ead82a565c0788f8e6fd1683958038a893a7c725"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "\(baseURL)/shared_preferences_foundation.xcframework.zip",
            checksum: "d6e788fc8aa3c04aa36caac1c3c69eb4f0ed3b74a9b908ff47579317bb464cbe"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "\(baseURL)/sqflite_darwin.xcframework.zip",
            checksum: "15efa619b2412592ae11904172914945ce6625b3a6ee660f338ba9685cab87eb"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "\(baseURL)/url_launcher_ios.xcframework.zip",
            checksum: "ae10d2c9516671127a62b98c9d4c4c87723ac489817d0e948d14748d50194e75"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "\(baseURL)/webview_flutter_wkwebview.xcframework.zip",
            checksum: "6a685ed362c4610bc24bd393c504f9a79e6c600a8f35f63a7953477fc88fc1d8"
        ),
    ]
)
