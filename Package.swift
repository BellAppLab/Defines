// swift-tools-version:4.1

import PackageDescription

let package = Package(
    name: "Defines",
    products: [
        .library(name: "Defines",
                 targets: ["Defines"]),
        ],
    targets: [
        .target(
            name: "Defines"
        ),
    ],
    swiftLanguageVersions: [3, 4]
)
