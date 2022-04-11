// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Statehood",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Statehood",
            targets: ["Statehood"]),
        
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.0.0"),
        .package(url: "https://github.com/christopherweems/Resultto.git", from: "0.2.1"),
        
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
