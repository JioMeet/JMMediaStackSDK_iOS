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
        .package(
            name: "SwiftyJSON",
            url: "https://github.com/SwiftyJSON/SwiftyJSON.git",
            .upToNextMajor(from: "5.0.1")
        ),
        .package(
            name: "SocketIO",
            url: "https://github.com/socketio/socket.io-client-swift.git", 
           .upToNextMajor(from: "16.1.0")
        ),
        .package(
            name: "SwiftyBeaver",
            url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", 
           .upToNextMajor(from: "2.0.0")
        ),
        .package(
            name: "MMWormhole",
            url: "https://github.com/JioMeet/MMWormhole.git",
            .upToNextMajor(from: "2.1.0")
        ),
    ],
    targets: [
        .binaryTarget(
            name: "JMMediaStackSDK",
            url: "https://storage.googleapis.com/cpass-sdk/libs/iOS/public/JMMedia/dynamic/v_1_0_0/JMMediaStackSDK.xcframework.zip",
            checksum: "ada6a45161b37540da235bb0d912a65833aa4541576fddf3b58993052c072f4c"
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
                .target(name: "WebRTC"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                .product(name: "SocketIO", package: "SocketIO"),
                .product(name: "SwiftyBeaver", package: "SwiftyBeaver"),
                .product(name: "MMWormhole", package: "MMWormhole"),
            ],
            path: "Framework/Dependency",
            exclude: []
        ),
    ]
)