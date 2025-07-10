// swift-tools-version:5.6

import PackageDescription

let package = Package(
  name: "swift-markdown-ui",
  platforms: [
    .macOS(.v12),
    .iOS(.v15),
    .tvOS(.v15),
    .macCatalyst(.v15),
    .watchOS(.v8),
  ],
  products: [
    .library(
      name: "MarkdownUI",
      targets: ["MarkdownUI"]
    ),
    .library(
      name: "Splash",
      targets: ["Splash"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", from: "1.10.0"),
    .package(url: "https://github.com/swiftlang/swift-cmark", from: "0.4.0"),
  ],
  targets: [
    .target(
      name: "MarkdownUI",
      dependencies: [
        .product(name: "cmark-gfm", package: "swift-cmark"),
        .product(name: "cmark-gfm-extensions", package: "swift-cmark"),
      ]
    ),
    .target(name: "Splash",dependencies: []),
    .testTarget(
      name: "MarkdownUITests",
      dependencies: [
        "MarkdownUI",
        .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
      ],
      exclude: ["__Snapshots__"]
    ),
  ]
)
