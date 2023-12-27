// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Util",
    platforms: [
        .macOS(.v12) // minimum macOS version driver supports
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Util",
            targets: ["Util"]),
        .library(
            name: "Object_Base",
            targets: ["Object_Base"]),
        .library(
            name: "File_Handler_Base",
            targets: ["File_Handler_Base", "Object_Base"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Util"),
        .testTarget(
            name: "UtilTests",
            dependencies: ["Util"]),
        .target(name: "Object_Base"),
        .testTarget(name: "Object_Base_Test", dependencies: ["Object_Base"]),
        .target(name: "File_Handler_Base"),
        .testTarget(name: "File_Handler_Base_Test", dependencies: ["File_Handler_Base"]),
    ]
)
