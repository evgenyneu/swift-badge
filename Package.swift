// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "BadgeSwift",
    products: [
        .library(name: "BadgeSwift", targets: ["BadgeSwift"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "BadgeSwift", dependencies: [], path: "BadgeSwift"),
        .testTarget(
            name: "BadgeSwiftTests",
            dependencies: ["BadgeSwift"]
        )
    ]
)
