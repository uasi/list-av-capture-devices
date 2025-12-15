// swift-tools-version:6.2

import PackageDescription

let package = Package(
    name: "list-av-capture-devices",
    platforms: [
        .macOS(.v13),
    ],
    targets: [
        .executableTarget(
            name: "list-av-capture-devices",
            dependencies: []),
        .testTarget(
            name: "list-av-capture-devicesTests",
            dependencies: ["list-av-capture-devices"]),
    ]
)
