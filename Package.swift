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
            checksum: "9a02bdff35f931232ea97f9871acab7d687c23051282d2b722881b58baaf5015"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "\(baseURL)/Flutter.xcframework.zip",
            checksum: "3f823e265318276095992630dab49f19c37cc374c46cdf7e91864acf724afa83"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(baseURL)/CryptoSwift.xcframework.zip",
            checksum: "0722f294d9228ca1e28d18b3bf37f25a33056c7dd461d794e713b011c48aaa03"
        ),
        .binaryTarget(
            name: "DKImagePickerController",
            url: "\(baseURL)/DKImagePickerController.xcframework.zip",
            checksum: "547b6a617dbf699df40d501dee35f296d58aadb09889ebaed410d787529774dc"
        ),
        .binaryTarget(
            name: "DKPhotoGallery",
            url: "\(baseURL)/DKPhotoGallery.xcframework.zip",
            checksum: "6600a41d64bd3fbb6be046e792c16effa031e5e3dde1c0d53d57d73a74ff82c0"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "\(baseURL)/FBLPromises.xcframework.zip",
            checksum: "2d8901e2a1ec88c31984331493dfb6949ef9d6086f6d63d88836581c0d7f8baf"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "\(baseURL)/GTMSessionFetcher.xcframework.zip",
            checksum: "e1e9990251a2b244b209557b7a7b5496102334cff6dccae53deb874377314af6"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "\(baseURL)/GoogleDataTransport.xcframework.zip",
            checksum: "0ea60dbbb1c1dd8429428783fb826829d1470bea7940636c0a9d9830990542d6"
        ),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "\(baseURL)/GoogleToolboxForMac.xcframework.zip",
            checksum: "a10c4b441567d4ac7a1ec0f02e71fdd728833994f90311be754a3a472b15a9e7"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "\(baseURL)/GoogleUtilities.xcframework.zip",
            checksum: "cadcf8de9eff4e70f63c2f7b41dc264a74fe441c3d0c30516c00cb0df4e1c16d"
        ),
        .binaryTarget(
            name: "IOSSecuritySuite",
            url: "\(baseURL)/IOSSecuritySuite.xcframework.zip",
            checksum: "ab534decc1cbc1e2972d4a39b688940d87b1a981143162a3e7596ab586a47b5d"
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
            checksum: "be49709c14bf9926814b519bb2c5a02fd42ec5f2e51fcbd2397422c2eefe2efc"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "\(baseURL)/SDWebImage.xcframework.zip",
            checksum: "cb8c72ee1a57e7178bb8057c5ac1f88f5d581f7da1c0e44be5bcdee647bdc2be"
        ),
        .binaryTarget(
            name: "SDWebImageWebPCoder",
            url: "\(baseURL)/SDWebImageWebPCoder.xcframework.zip",
            checksum: "6c4f8e404dd0e2af4391afba0bedb485a0af9cbd2ffea3f53ad64c50d613fec8"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "\(baseURL)/SwiftyGif.xcframework.zip",
            checksum: "55fb4e75fafd1fa86201fc39fc9f243c484433f936a16ca209b228e2abcb63d3"
        ),
        .binaryTarget(
            name: "camera_avfoundation",
            url: "\(baseURL)/camera_avfoundation.xcframework.zip",
            checksum: "2704e96a4a4565efa7c9b76454ca88c0e6fa7d73607630696796a9d1f68e0f49"
        ),
        .binaryTarget(
            name: "connectivity_plus",
            url: "\(baseURL)/connectivity_plus.xcframework.zip",
            checksum: "cb7e46051d813258476c1c906dc3b1ca53014c00a9d74ba5cda53401e7c47df9"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "\(baseURL)/device_info_plus.xcframework.zip",
            checksum: "98e9fd9b0c46ddca66ad65e01fd8b86c818de5991b947813233098463a935633"
        ),
        .binaryTarget(
            name: "file_picker",
            url: "\(baseURL)/file_picker.xcframework.zip",
            checksum: "d57438e71ab4615fa17f9476c9183519bdd8c1b9e93ce68b2e5c4fa43ea39f33"
        ),
        .binaryTarget(
            name: "flutter_image_compress_common",
            url: "\(baseURL)/flutter_image_compress_common.xcframework.zip",
            checksum: "cbc62d159ef9cdc57073e64d64e28c2791100edc51a4e03061460a7882d480be"
        ),
        .binaryTarget(
            name: "flutter_liveness_detection_randomized_plugin",
            url: "\(baseURL)/flutter_liveness_detection_randomized_plugin.xcframework.zip",
            checksum: "58e6b729013a897088cff0461daa627e48d067ca3d8bc301f12c31692c642428"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "\(baseURL)/flutter_secure_storage.xcframework.zip",
            checksum: "9318c35a2ecc9ffdc97747e3187cd6a1f0ebe72da7492b551b705da82c5711eb"
        ),
        .binaryTarget(
            name: "geolocator_apple",
            url: "\(baseURL)/geolocator_apple.xcframework.zip",
            checksum: "b2539d74e64ce375d7887fd12a1d51276e8c8ce099d6a19424497ba17d03281e"
        ),
        .binaryTarget(
            name: "google_mlkit_commons",
            url: "\(baseURL)/google_mlkit_commons.xcframework.zip",
            checksum: "576240faa5f59ff7dd23e6cef74534a8184ea7a4a94b519b16ffd6db244fa223"
        ),
        .binaryTarget(
            name: "google_mlkit_face_detection",
            url: "\(baseURL)/google_mlkit_face_detection.xcframework.zip",
            checksum: "a2f7c70220898e0d8b79cabbca99fb7028e46660cd33bddf8ff69682ee40dcac"
        ),
        .binaryTarget(
            name: "image_picker_ios",
            url: "\(baseURL)/image_picker_ios.xcframework.zip",
            checksum: "50e367e9a287dfe8e65de85630af42efc1f4deaf8be9c14f8e97ee663b3d70d4"
        ),
        .binaryTarget(
            name: "libwebp",
            url: "\(baseURL)/libwebp.xcframework.zip",
            checksum: "af397835fa99fb31c48b578d75a534b1212e4c3e226e66ee1283ab98fd8215d8"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "\(baseURL)/nanopb.xcframework.zip",
            checksum: "06a4b60cf18f2adb8bf83e1884b8c1c6e397e37b50dbbe555b45f4755c2d805a"
        ),
        .binaryTarget(
            name: "network_info_plus",
            url: "\(baseURL)/network_info_plus.xcframework.zip",
            checksum: "b9832be2df08a490be1c5a36252503a536a83354674b1e52414d16e245c3a50f"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "\(baseURL)/path_provider_foundation.xcframework.zip",
            checksum: "28b598ec5b46255db9da3cc7b61a788cd81f116bd20550614e5df62697cc080c"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "\(baseURL)/permission_handler_apple.xcframework.zip",
            checksum: "433d859363b2ed0a9deaa265dd76e2520c0804936792b9c0f0afd246ac660903"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "\(baseURL)/shared_preferences_foundation.xcframework.zip",
            checksum: "63a3f557a8374fe3a3a6a80a2b1d962c9056ea22c3a042d7b1e272de68ef9628"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "\(baseURL)/sqflite_darwin.xcframework.zip",
            checksum: "a491bba7b08291340d681d02ff80dffd3709c30a0b44b4b6811b2f7507e15f79"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "\(baseURL)/url_launcher_ios.xcframework.zip",
            checksum: "038adbdd6edbd3b458000a1af459dc789c2a0bdbadf74bcbb9612ae796d83366"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "\(baseURL)/webview_flutter_wkwebview.xcframework.zip",
            checksum: "b18f347671fe44a201fd2fcbea4e07d500429cc42b2cdd05c16c750ef3dee425"
        ),
    ]
)
