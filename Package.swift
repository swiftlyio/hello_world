// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "HelloWorld",
    products: [
        .executable(name: "App", targets: ["App"]),
        ],
    dependencies: [
        .package(url: "https://github.com/swiftlyio/swiftly.git", from: "1.0.0")
        ],
    targets: [
        .target(name: "App", dependencies: ["Swiftly"]),
        ]
)
