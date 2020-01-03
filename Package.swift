// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "CardParts",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(name: "CardParts", targets: ["CardParts"])
    ],
    dependencies: [
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources", .upToNextMajor(from: "3.1.0")),
        .package(url: "https://github.com/RxSwiftCommunity/RxGesture", .upToNextMajor(from: "2.2.0"))
    ],
    targets: [
        .target(
            name: "CardParts",
            dependencies: ["RxDataSources", "RxGesture"],
            path: "CardParts/src")
    ],
    swiftLanguageVersions: [.v5]
)
