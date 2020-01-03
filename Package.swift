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
        .package(url: "https://github.com/ReactiveX/RxSwift", from: "5.0.0"),
        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources", from: "4.0.0"),
        .package(url: "https://github.com/RxSwiftCommunity/RxGesture", from: "3.0.0")
    ],
    targets: [
        .target(
            name: "CardParts",
            dependencies: ["RxSwift", "RxCocoa", "RxDataSources", "RxGesture"],
            path: "CardParts/src")
    ],
    swiftLanguageVersions: [.v5]
)
