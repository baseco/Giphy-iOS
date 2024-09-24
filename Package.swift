
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GiphyiOS",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "GiphyiOS",
            targets: ["GiphyiOS"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/AFNetworking/AFNetworking.git", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "GiphyiOS",
            dependencies: ["AFNetworking"],
            path: "Pod/Classes",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
