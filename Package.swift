// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "series-engine-swift",
    dependencies: [
        .package(url: "https://github.com/yaslab/CSV.swift.git", .upToNextMinor(from: "2.4.2")),
        .package(url: "https://github.com/JohnSundell/Files", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "series-engine-swift",
            dependencies: ["CSV", "Files"]),
        .testTarget(
            name: "series-engine-swiftTests",
            dependencies: ["series-engine-swift"]),
    ]
)
