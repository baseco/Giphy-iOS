
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GiphyiOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "GiphyiOS",
            targets: ["GiphyiOS"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/baseco/AFNetworking.git", .revision("c89d2f5207c0721cbb1f3dd5ac54000c34dafcab")),
    ],
    targets: [
        .target(
            name: "GiphyiOS",
            dependencies: ["AFNetworking"],
            path: "GiphyiOS",
            publicHeadersPath: "include",

            cSettings: [
                .headerSearchPath("include/GiphyiOS")
            ]
        )
    ]
)
