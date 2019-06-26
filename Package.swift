// swift-tools-version:5.0
// https://github.com/apple/swift-package-manager/blob/master/Documentation/PackageDescription.md
import PackageDescription

let package = Package(
    name: "TestUtil",
    platforms: [
        .macOS(.v10_14),
    ],
    products: [
        .library(name: "TestUtil", type: .static, targets: ["TestUtil"]),
    ],
    targets: [
        .target(name: "TestUtil", path: "TestUtil"),
    ]
)
