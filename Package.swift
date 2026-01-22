// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StarPRNTSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "StarPRNTSDK",
            targets: ["StarPRNTSDK"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "StarPRNTSDK",
            dependencies: [
                "StarIO",
                "StarIO_Extension",
                "StarIODeviceSetting"
            ],
            path: "Sources/StarPRNTSDK",
            publicHeadersPath: "."
        ),
        .binaryTarget(
            name: "StarIO",
            path: "software/libs/StarIO.xcframework"
        ),
        .binaryTarget(
            name: "StarIO_Extension",
            path: "software/libs/StarIO_Extension.xcframework"
        ),
        .binaryTarget(
            name: "StarIODeviceSetting",
            path: "software/libs/StarIODeviceSetting.xcframework"
        ),
    ]
)
