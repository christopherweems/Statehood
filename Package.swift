// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "Statehood",
    products: [
        .library(
            name: "Statehood",
            targets: ["Statehood"]),
        
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms.git", from: "1.0.0"),
        .package(url: "https://github.com/christopherweems/Resultto.git", from: "0.2.2"),
        
    ],
    targets: [
        .target(
            name: "Statehood",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                .product(name: "Resultto", package: "Resultto"),
            ]),
        
        /* Tests */
        
        .testTarget(
            name: "StatehoodTests",
            dependencies: ["Statehood"]),
        
    ]
)
