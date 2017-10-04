// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "HelloWorld",
    dependencies: [
        .Package(url: "https://github.com/swiftlyio/swiftly.git", majorVersion: 1)
    ]
)
