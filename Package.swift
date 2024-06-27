// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JioMeetMediaStackSDK",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "JioMeetMediaStackSDK",
            targets: ["JioMeetMediaStackSDKTarget"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "JMMediaStackSDK",
            path: "XCFrameworks/JMMediaStackSDK.xcframework"
        ),
        .binaryTarget(
            name: "Mediasoup",
            url: "https://storage.googleapis.com/cpass-sdk/libs/iOS/public/JMMedia/static/v_1_0_0/single/Mediasoup.xcframework.zip",
            checksum: "756904959dbe4bbf3bc843dff64548d89c8ea54226e81982b84d234d128901f1"
        ),
        .binaryTarget(
            name: "WebRTC",
            url: "https://storage.googleapis.com/cpass-sdk/libs/iOS/public/JMMedia/static/v_1_0_0/single/WebRTC.xcframework.zip",
            checksum: "0ca49f18e1e099bc1732c1949cc50111d79086ed575136477207e8646a553b2f"
        ),
        .target(
            name: "JioMeetMediaStackSDKTarget",
            dependencies: [
                .target(name: "JMMediaStackSDK"),
                .target(name: "Mediasoup"),
                .target(name: "WebRTC")
            ],
            path: "Framework/Dependency",
            exclude: []
        ),
    ]
)
