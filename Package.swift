// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "series-engine-swift",
    dependencies: [
    ],
    targets: [
        .target(
            name: "series-engine-swift",
            dependencies: []),
        .testTarget(
            name: "series-engine-swiftTests",
            dependencies: ["series-engine-swift"]),
    ]
)
