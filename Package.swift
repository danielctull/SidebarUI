// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SidebarUI",
    products: [
        .library(name: "SidebarUI", targets: ["SidebarUI"]),
    ],
    targets: [
        .target(name: "SidebarUI"),
        .testTarget(name: "SidebarUITests", dependencies: ["SidebarUI"]),
    ]
)
