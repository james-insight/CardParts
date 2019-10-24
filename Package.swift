// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CardParts",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "CardParts",
            targets: ["CardParts"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "4.5.0"),
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources", from: "3.1.0"),
        .package(url: "https://github.com/RxSwiftCommunity/RxGesture", from: "2.2.0")
    ],
    targets: [
        .target(
            name: "CardParts",
            dependencies: ["RxSwift", "RxCocoa", "RxDataSources", "RxGesture"],
            path: "CardParts/src")
    ]
)
