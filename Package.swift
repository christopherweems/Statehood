// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Statehood",
    platforms: [.macOS(.v10_15),
                .iOS(.v13),
                .tvOS(.v13),
                .watchOS(.v6)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Statehood",
            targets: ["Statehood"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms.git", .upToNextMajor(from: "0.0.1")),
        .package(url: "https://github.com/christopherweems/Resultto.git", .upToNextMajor(from: "0.0.2")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Statehood",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                .product(name: "Resultto", package: "Resultto"),
            ]),
        .testTarget(
            name: "StatehoodTests",
            dependencies: ["Statehood"]),
    ]
)
