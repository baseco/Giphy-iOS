
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
        .package(url: "https://github.com/baseco/AFNetworking.git", .revision("75441a7d92ac7c37e705d4c744f279b639081253")),
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
