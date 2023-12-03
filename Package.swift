// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Path",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Path",
            targets: ["Path"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Path",
            cxxSettings: [
                .define("_CRT_SECURE_NO_WARNINGS", .when(platforms: [.windows])),
            ],
            linkerSettings: [
                .linkedLibrary("Pathcch", .when(platforms: [.windows])),
            ]
        ),
        .testTarget(
            name: "PathTests",
            dependencies: ["Path"]
        ),
    ]
)
