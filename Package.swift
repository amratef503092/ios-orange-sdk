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
            checksum: "c395b42813315d929ea8b4d4cd1f98eeb27fa9d4e4f5f9ef464f86cd888d5481"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "\(baseURL)/Flutter.xcframework.zip",
            checksum: "a7c5f32ef0885d6abfd8e2ba5510f7e417d0421040a6fc6b3b16afa3dbd53de0"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "\(baseURL)/CryptoSwift.xcframework.zip",
            checksum: "b729542b0fd9984dce89c1808f07c6c76a4ebfd3f73e087592d4e9a924b08d48"
        ),
        .binaryTarget(
            name: "DKImagePickerController",
            url: "\(baseURL)/DKImagePickerController.xcframework.zip",
            checksum: "2a86a8f561d3c741bbaf14136b814e56c453592e8cda8a7d35bc0d05255b4eb7"
        ),
        .binaryTarget(
            name: "DKPhotoGallery",
            url: "\(baseURL)/DKPhotoGallery.xcframework.zip",
            checksum: "1a9909ba0651925a69cc94a37d13f307d759c6f7de190c843e1982fbd3be5e53"
        ),
        .binaryTarget(
            name: "FBLPromises",
            url: "\(baseURL)/FBLPromises.xcframework.zip",
            checksum: "046a59215fe097537bcd8ccaefe6b9ab7edb4b2fa1388d6eb98414caac74c066"
        ),
        .binaryTarget(
            name: "GTMSessionFetcher",
            url: "\(baseURL)/GTMSessionFetcher.xcframework.zip",
            checksum: "a1f34e1bc2291593c54713d052a126864366a438d2e994a8d1a9cbc68dc89657"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            url: "\(baseURL)/GoogleDataTransport.xcframework.zip",
            checksum: "3923534b7e6122b39429b8da509ed3878d58c5b73376de12094fa32be7f62b1d"
        ),
        .binaryTarget(
            name: "GoogleToolboxForMac",
            url: "\(baseURL)/GoogleToolboxForMac.xcframework.zip",
            checksum: "0acf99107ed26c785cb492fb53b4509f15fb6b6a3f19b59d39edcc9c8d45cb77"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            url: "\(baseURL)/GoogleUtilities.xcframework.zip",
            checksum: "668a6d3dd69b83f4d42bc754c7dc43b9fbb4d62863f529318c38e379fdf4c72e"
        ),
        .binaryTarget(
            name: "IOSSecuritySuite",
            url: "\(baseURL)/IOSSecuritySuite.xcframework.zip",
            checksum: "e1c63c609f1f3cde01ab2079981698bdd3ae78dfbb9648dbe90f634f2af1dd84"
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
            checksum: "a9eb73bf3ca886bc68afd5f57c38a708e43051f1cd0b598cecbbd2884880e0df"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "\(baseURL)/SDWebImage.xcframework.zip",
            checksum: "c175bcf77d60393edf0b4699797d9591c01ba0008b90a529502604ea9af04ddd"
        ),
        .binaryTarget(
            name: "SDWebImageWebPCoder",
            url: "\(baseURL)/SDWebImageWebPCoder.xcframework.zip",
            checksum: "964cfb8f3020e0ce6087daf1dbee73bc012dec8f0d44eba6586d8bd5ffe64871"
        ),
        .binaryTarget(
            name: "SwiftyGif",
            url: "\(baseURL)/SwiftyGif.xcframework.zip",
            checksum: "af72783e47d2e3d86d4919f21461c688a3f1aff59800b7014ae32a6597a297a8"
        ),
        .binaryTarget(
            name: "camera_avfoundation",
            url: "\(baseURL)/camera_avfoundation.xcframework.zip",
            checksum: "3c8e58df3fa3186309a58e88cc25ad0f4010af67b884d63cf2e3e37214c75479"
        ),
        .binaryTarget(
            name: "connectivity_plus",
            url: "\(baseURL)/connectivity_plus.xcframework.zip",
            checksum: "f9dadc756b5c8db4c97d65fa00d341aef9209655c0a4f135b9e1cd3d25928cdb"
        ),
        .binaryTarget(
            name: "device_info_plus",
            url: "\(baseURL)/device_info_plus.xcframework.zip",
            checksum: "a432636906ca9ee1081123131ac78468f9e6de33b9d2b8676aff3cd099bb7811"
        ),
        .binaryTarget(
            name: "file_picker",
            url: "\(baseURL)/file_picker.xcframework.zip",
            checksum: "8b6687a5bdbe4e1d6a87f8d5b65ecf56d8582c8ae347b1d2c5f339b04fd89167"
        ),
        .binaryTarget(
            name: "flutter_image_compress_common",
            url: "\(baseURL)/flutter_image_compress_common.xcframework.zip",
            checksum: "e47b9149f9f985f6bbe40ba971901860830f9b4c93df525b5064230297a9c18b"
        ),
        .binaryTarget(
            name: "flutter_liveness_detection_randomized_plugin",
            url: "\(baseURL)/flutter_liveness_detection_randomized_plugin.xcframework.zip",
            checksum: "fddde7d60b8c578dd1ed84878b517e0b9973f25ac92a9b9ba82f95c07d1fa846"
        ),
        .binaryTarget(
            name: "flutter_secure_storage",
            url: "\(baseURL)/flutter_secure_storage.xcframework.zip",
            checksum: "726d29144c19810c48cc550cec3a757d2db4e808b4dee0fe6a0048db7198cb61"
        ),
        .binaryTarget(
            name: "geolocator_apple",
            url: "\(baseURL)/geolocator_apple.xcframework.zip",
            checksum: "d9188a6fc4d1be05e1c75146cb4d1931272ef8798d96c927e281a897025e0b36"
        ),
        .binaryTarget(
            name: "google_mlkit_commons",
            url: "\(baseURL)/google_mlkit_commons.xcframework.zip",
            checksum: "8f221440864e5c6cdfd7533ff4cfd10c73f53bce0f597127840c383bac32703b"
        ),
        .binaryTarget(
            name: "google_mlkit_face_detection",
            url: "\(baseURL)/google_mlkit_face_detection.xcframework.zip",
            checksum: "32a46566070ba21fbc6d112eb12170361473a5413143149d35ef19fa2173404b"
        ),
        .binaryTarget(
            name: "image_picker_ios",
            url: "\(baseURL)/image_picker_ios.xcframework.zip",
            checksum: "2400edfa0accb99851a333be48f9b3006e2c777734d6664be0e18d3ed4fbbd5d"
        ),
        .binaryTarget(
            name: "libwebp",
            url: "\(baseURL)/libwebp.xcframework.zip",
            checksum: "45935ae3e38a0ef8e76cff2da8eb22915b69114353bbd325ce4365abba154456"
        ),
        .binaryTarget(
            name: "nanopb",
            url: "\(baseURL)/nanopb.xcframework.zip",
            checksum: "221b6b6b542edd92046a6c0e8f2863e6ee4d46824b2a46353143bfd1c903162e"
        ),
        .binaryTarget(
            name: "network_info_plus",
            url: "\(baseURL)/network_info_plus.xcframework.zip",
            checksum: "8c6e34200b8ca08b5d4814034a95f2ebe5aa59572c192653f914144506ddc11c"
        ),
        .binaryTarget(
            name: "path_provider_foundation",
            url: "\(baseURL)/path_provider_foundation.xcframework.zip",
            checksum: "cf1757b7c5312a53c34c655ff2fbfff1314913cbb911f2ac8d160b618d37cee8"
        ),
        .binaryTarget(
            name: "permission_handler_apple",
            url: "\(baseURL)/permission_handler_apple.xcframework.zip",
            checksum: "cbd8ba296a5df979f406c57cfffeb90945e3509415f39d3f1add7161f0ed199e"
        ),
        .binaryTarget(
            name: "shared_preferences_foundation",
            url: "\(baseURL)/shared_preferences_foundation.xcframework.zip",
            checksum: "8db94a0f41b14360be4854208fdd1b3bfa5111eba3d2118a48e08e3e10cca723"
        ),
        .binaryTarget(
            name: "sqflite_darwin",
            url: "\(baseURL)/sqflite_darwin.xcframework.zip",
            checksum: "001923d0b9b7aad52356e4ce0f9183bee9df486df6c70b301189b8782c968999"
        ),
        .binaryTarget(
            name: "url_launcher_ios",
            url: "\(baseURL)/url_launcher_ios.xcframework.zip",
            checksum: "990d0f80e2b3de303ec477293f6a2271e3693e5d520b46b77988b272160171ad"
        ),
        .binaryTarget(
            name: "webview_flutter_wkwebview",
            url: "\(baseURL)/webview_flutter_wkwebview.xcframework.zip",
            checksum: "229dfaa81eccbd35a090bb3fa0fd4b28f1542085de6e27d98b3654a213e80a40"
        ),
    ]
)
