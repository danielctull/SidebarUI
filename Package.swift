// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SidebarUI",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .tvOS(.v14),
        .watchOS(.v7),
    ],
    products: [
        .library(name: "SidebarUI", targets: ["SidebarUI"]),
    ],
    targets: [
        .target(name: "SidebarUI"),
        .testTarget(name: "SidebarUITests", dependencies: ["SidebarUI"]),
    ]
)
