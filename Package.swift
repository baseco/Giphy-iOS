
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
        .package(url: "https://github.com/baseco/AFNetworking.git", .revision("3272724f5b55df8287c5de3bad9eff83ed0c2256")),
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
