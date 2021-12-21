// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CombineAgoraRTM",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CombineAgoraRTM",
            targets: ["CombineAgoraRTM", "AgoraRtmKit"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CombineAgoraRTM",
            dependencies: []),
        .testTarget(
            name: "CombineAgoraRTMTests",
            dependencies: ["CombineAgoraRTM"]),
        .binaryTarget(
            name: "AgoraRtmKit",
            url: "https://github.com/AgoraIO/AgoraRtm_iOS/releases/download/1.4.9/AgoraRtmKit.xcframework.zip",
            checksum: "9e94aca2dc20ddc4d716f4b2e02f36a00dbd2320991ac51ac711bfe80bc6ccd3"
        )
    ]
)
