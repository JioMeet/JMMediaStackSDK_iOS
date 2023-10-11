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
            from: "4.0.0"
        ),
        .package(
            name: "SocketIO",
            url: "https://github.com/socketio/socket.io-client-swift.git", 
           from: "16.1.0"
        ),
        .package(
            name: "SwiftyBeaver",
            url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", 
           .upToNextMajor(from: "2.0.0")
        ),
        .package(
            name: "MMWormhole",
            url: "https://github.com/JioMeet/MMWormhole.git",
            from: "2.1.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "JMMediaStackSDK",
            url: "https://storage.googleapis.com/cpass-sdk/libs/iOS/public/JMMedia/v_1_0_0/JMMediaStackSDK2.xcframework.zip",
            checksum: "5777f7ac4636137a8f0e36fdbb02c27a89c3197184add21b06883e8b62609a2a"
        ),
        .binaryTarget(
            name: "Mediasoup",
            url: "https://storage.googleapis.com/cpass-sdk/libs/iOS/public/JMMedia/v_1_0_0/Mediasoup.xcframework.zip",
            checksum: "756904959dbe4bbf3bc843dff64548d89c8ea54226e81982b84d234d128901f1"
        ),
        .binaryTarget(
            name: "WebRTC",
            url: "https://storage.googleapis.com/cpass-sdk/libs/iOS/public/JMMedia/v_1_0_0/WebRTC.xcframework.zip",
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