
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
        .package(url: "https://github.com/baseco/AFNetworking.git", .branch("2.3.1_with_package_swift")),
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
