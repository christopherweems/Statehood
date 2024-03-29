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
        
    ],
    targets: [
        .target(
            name: "Statehood",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                
            ]),
        
        /* Tests */
        
        .testTarget(
            name: "StatehoodTests",
            dependencies: ["Statehood"]),
        
    ]
)
