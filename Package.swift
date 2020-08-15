// swift-tools-version:5.2
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
            name: "iDKUserDefault",
            targets: ["iDKUserDefault"]),
        .library(
            name: "iDKSafeDictionary",
            targets: ["iDKSafeDictionary"]),
        .library(
            name: "iDKFoundation",
            targets: ["iDKFoundation"]),
        .library(
            name: "iDKUIKit",
            targets: ["iDKUIKit"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "iDKUserDefault",
            dependencies: [],
            path: "Sources/UserDefault"),
        .target(
            name: "iDKSafeDictionary",
            dependencies: [],
            path: "Sources/SafeDictionary"),
        .target(
            name: "iDKFoundation",
            dependencies: [],
            path: "Sources/Foundation"),
        .target(
            name: "iDKUIKit",
            dependencies: [],
            path: "Sources/UIKit")
    ],
    swiftLanguageVersions: [.v5])
