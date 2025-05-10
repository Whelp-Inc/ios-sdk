// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WhelpChat",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "WhelpChat",
            targets: ["WhelpChat"]
        ),
    ],
    targets: [
        .target(
            name: "WhelpChat",
            path: "WhelpChat/Classes",
            exclude: [],
            resources: [],
            publicHeadersPath: "."
        )
    ]
)
