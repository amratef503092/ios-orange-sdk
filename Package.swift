// swift-tools-version: 5.7
import PackageDescription

let baseURL = "https://github.com/amratef503092/ios-orange-sdk/releases/download/v5.0-spm"

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
                "flutter_local_notifications",
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
            checksum: "31f14e01ac778ac213b589574706547efa6b22c364038c22e98ffb9d09e2b4fd"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(baseURL)/CryptoSwift.xcframework.zip",
            checksum: "ea7149ae14ebe6bc2919bd5aaea08bc8717f938b9bdf6237d5c01066fd10ea1d"
        ),
        .binaryTarget(
            name: "DKImagePickerController",
            url: "\(baseURL)/DKImagePickerController.xcframework.zip",
            checksum: "062322cc11b109f5e621f2008ab7dcbb200f9840f4d4c3d5c68b9e595f3d94ca"
        ),
        .binaryTarget(
            name: "DKPhotoGallery",
            url: "\(baseURL)/DKPhotoGallery.xcframework.zip",
            checksum: "b0461a833cbc3bb37609f7a8541ff2613307ba4d3ed86586f4152f4e553a3ccf"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "\(baseURL)/Flutter.xcframework.zip",
            checksum: "27b99725e2b9d20dd8e32aec7cb0b067d8595e00603e54c58c526713c80fff3a"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "\(baseURL)/GTMSessionFetcher.xcframework.zip",
            checksum: "c14e3581b5278dc115badb2d918b54e839bf679d33db0ccbdf9f076e649e55a5"
        ),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "\(baseURL)/GoogleToolboxForMac.xcframework.zip",
            checksum: "8aaf3dc34f5dc3e8db41f03f5562b923f98cc147fc4ddc38f98a57ee89f1b634"
        ),
        .binaryTarget(
            name: "IOSSecuritySuite",
            url: "\(baseURL)/IOSSecuritySuite.xcframework.zip",
            checksum: "0c3db8057416bbf87146f77707ef92e610bdb7cb6d37bf6f01036d54efb4afc7"
        ),
        .binaryTarget(
            name: "MLImage",
            url: "\(baseURL)/MLImage.xcframework.zip",
            checksum: "d5b2405a2116aec0eea799b494a15705f2e0e12de8058f1a4f4e7d3a06c6c792"
        ),
        .binaryTarget(
            name: "MLKitCommon",
            url: "\(baseURL)/MLKitCommon.xcframework.zip",
            checksum: "b1b06e380c9ee2b72616bb9459113213250cb2a1ea682f0905e17e8a4d6429c3"
        ),
        .binaryTarget(
            name: "MLKitFaceDetection",
            url: "\(baseURL)/MLKitFaceDetection.xcframework.zip",
            checksum: "fa92c0d1ac162e4fd6f4a41dd04735c3dec9e1386d0201bf1d4867887f7c5681"
        ),
        .binaryTarget(
            name: "MLKitVision",
            url: "\(baseURL)/MLKitVision.xcframework.zip",
            checksum: "d502da77dc89569a8c22335b9cf773215f26a249448ce3897fcfc4950ba15d23"
        ),
        .binaryTarget(
            name: "Mantle",
            url: "\(baseURL)/Mantle.xcframework.zip",
            checksum: "9cadb86f41977f4bd622d7f17b9942d8fedf499a427456e726d3275f65a017b1"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "\(baseURL)/SDWebImage.xcframework.zip",
            checksum: "5f107a808d8ac22ac1533f01beb0877108c0ff8bbd25ec3d9956f0f238152d92"
        ),
        .binaryTarget(
            name: "SDWebImageWebPCoder",
            url: "\(baseURL)/SDWebImageWebPCoder.xcframework.zip",
            checksum: "d71c69c61d663daf276264d346f27fff79754bc5ca38f23c8b0c2b9061b89073"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "\(baseURL)/SwiftyGif.xcframework.zip",
            checksum: "10cdc0c02095df21fc5f9b5a09098edb605745827da464078df560c1e0fe2bb6"
        ),
        .binaryTarget(
            name: "camera_avfoundation",
            url: "\(baseURL)/camera_avfoundation.xcframework.zip",
            checksum: "1fda5aa373640232b4f30f4aeeb87865fbbb75d89e13c399598f63e4eac8d353"
        ),
        .binaryTarget(
            name: "connectivity_plus",
            url: "\(baseURL)/connectivity_plus.xcframework.zip",
            checksum: "cea55df694b94a17d09d0c7fbebe04f314852133a7f2e8ccba765aa8562cb4f2"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "\(baseURL)/device_info_plus.xcframework.zip",
            checksum: "7bdb9ccee9884f30fe7035dab670bed6cf991651d4d430338bc9d7b4ec8d10fb"
        ),
        .binaryTarget(
            name: "file_picker",
            url: "\(baseURL)/file_picker.xcframework.zip",
            checksum: "653a2d52c5c1bb2627b6b4941052cdca7af16463b56b743a35f50ef7c8e88154"
        ),
        .binaryTarget(
            name: "flutter_image_compress_common",
            url: "\(baseURL)/flutter_image_compress_common.xcframework.zip",
            checksum: "6d5f072ddb6044d93c7eeb6fdf5988573fad474d3e921528bce8fc0ad45cdacf"
        ),
        .binaryTarget(
            name: "flutter_liveness_detection_randomized_plugin",
            url: "\(baseURL)/flutter_liveness_detection_randomized_plugin.xcframework.zip",
            checksum: "017262672831c99b34529a2348ceabf078bb33b1b008342498e49de76d2eee3b"
        ),
        .binaryTarget(
            name: "flutter_local_notifications",
            url: "\(baseURL)/flutter_local_notifications.xcframework.zip",
            checksum: "dd4aa7031454d23f0695c719251e71b250e63521821ded319ba10fa1198093dd"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "\(baseURL)/flutter_secure_storage.xcframework.zip",
            checksum: "c12d9d9827b609041a912faf7803af5e5c5ad720fabb44e910f7635221dd0423"
        ),
        .binaryTarget(
            name: "geolocator_apple",
            url: "\(baseURL)/geolocator_apple.xcframework.zip",
            checksum: "c43b18f5e94aa706208b3906f5fbf29d1d1028314a7483e2df4bc29736fe6a02"
        ),
        .binaryTarget(
            name: "google_mlkit_commons",
            url: "\(baseURL)/google_mlkit_commons.xcframework.zip",
            checksum: "ee3876ba720e715f2b8ec2dab928192a0714c5e811ae636b58a4368bd80a8bd1"
        ),
        .binaryTarget(
            name: "google_mlkit_face_detection",
            url: "\(baseURL)/google_mlkit_face_detection.xcframework.zip",
            checksum: "519e2bc9b7e76a9e847824b0ce485cc9001e7e4781ccce4f6d31089ede29e4cc"
        ),
        .binaryTarget(
            name: "image_picker_ios",
            url: "\(baseURL)/image_picker_ios.xcframework.zip",
            checksum: "7aa513b30ef98df3b9000b569f13be1dcb50c7f89beaa3be3c9effbcda16a2a3"
        ),
        .binaryTarget(
            name: "libwebp",
            url: "\(baseURL)/libwebp.xcframework.zip",
            checksum: "cef861ae85f5c7502e3576e39ee9122f11b6e6b8ce0e5ab68a9a69d067707869"
        ),
        .binaryTarget(
            name: "network_info_plus",
            url: "\(baseURL)/network_info_plus.xcframework.zip",
            checksum: "6bcad465db841833be341e28670975fe232afca198dc1068f4b57a25b2a6e98d"
        ),
        .binaryTarget(
            name: "open_filex",
            url: "\(baseURL)/open_filex.xcframework.zip",
            checksum: "84da3837a45da758bc535dd548af9e7154010d5b748336474dec00d809b67f0a"
        ),
        .binaryTarget(
            name: "package_info_plus",
            url: "\(baseURL)/package_info_plus.xcframework.zip",
            checksum: "3e455b727113bb8fe87adc084dacc637f60a0e6400da6bcaa43ad5a96c83392d"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "\(baseURL)/path_provider_foundation.xcframework.zip",
            checksum: "030d25e99e8c1581700a13ac74817fe65aa5cbda45f26b3b92264d0032d962a0"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "\(baseURL)/permission_handler_apple.xcframework.zip",
            checksum: "aa2296111f21d93136fa5f613c476baa1bf1ac895738d6a8e55b915d33eba7e5"
        ),
        .binaryTarget(
            name: "sensors_plus",
            url: "\(baseURL)/sensors_plus.xcframework.zip",
            checksum: "f4592d019c328f402c2bb7d2a19e7cefcd46b570c996fb120ee37d024400dba8"
        ),
        .binaryTarget(
            name: "share_plus",
            url: "\(baseURL)/share_plus.xcframework.zip",
            checksum: "f44f3773cc4b93c0ad673a0e7e4cb012fe6653add25d83f9d068162fde279086"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "\(baseURL)/shared_preferences_foundation.xcframework.zip",
            checksum: "cf8b9a78c4e3098848188db29bb9ea10204ad2bcae31fb0853a69cba9c0b1e96"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "\(baseURL)/sqflite_darwin.xcframework.zip",
            checksum: "98840b3ed3d8df130ec97aa1b07ca93de5896e63ca9df8b0afcd8e7ec55b8275"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "\(baseURL)/url_launcher_ios.xcframework.zip",
            checksum: "4c2a164342e1e17c928b5700adea8a3e91767f95983da692f3788e2d9f77bdef"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "\(baseURL)/webview_flutter_wkwebview.xcframework.zip",
            checksum: "1724825ece7c457fe73683b8270481f4c52f7779e0dc2b5599c09e02aade9c81"
        ),
    ]
)
