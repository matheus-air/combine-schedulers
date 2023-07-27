// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "combine-schedulers",
  platforms: [
    .iOS(.v11),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "CombineSchedulers",
      targets: ["CombineSchedulers"]
    )
  ],
  dependencies: [
    .package(url: "git@github.com:matheus-air/swift-concurrency-extras", branch: "ios-11-compatibility"),
    .package(url: "git@github.com:matheus-air/xctest-dynamic-overlay", branch: "ios-11-compatibility"),
  ],
  targets: [
    .target(
      name: "CombineSchedulers",
      dependencies: [
        .product(name: "ConcurrencyExtras", package: "swift-concurrency-extras"),
        .product(name: "XCTestDynamicOverlay", package: "xctest-dynamic-overlay"),
      ]
    ),
    .testTarget(
      name: "CombineSchedulersTests",
      dependencies: [
        "CombineSchedulers"
      ]
    ),
  ]
)
