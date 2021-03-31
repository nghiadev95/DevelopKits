// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DevelopKits",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "DevelopKits",
            targets: ["DevelopKits"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DevelopKits",
            path: "Sources/DevelopKits")
    ],
    swiftLanguageVersions: [.v5])
