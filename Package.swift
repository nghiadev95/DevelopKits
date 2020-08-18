// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iDevKits",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "iDevKits",
            targets: ["iDevKits"])
    ],
    dependencies: [
        .package(url: "https://github.com/devxoul/Then.git", from: "2.7.0"),
        .package(url: "https://github.com/SwifterSwift/SwifterSwift.git", from: "5.2.0")
    ],
    targets: [
        .target(
            name: "iDevKits",
            dependencies: ["Then", "SwifterSwift"],
            path: "Sources/iDevKits")
    ],
    swiftLanguageVersions: [.v5])
