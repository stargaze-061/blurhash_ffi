// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "blurhash_ffi",
  platforms: [
    .iOS("13.0"),
  ],
  products: [
    .library(
      name: "blurhash-ffi",
      type: .static,
      targets: ["blurhash_ffi"],
    ),
  ],
  dependencies: [
    .package(name: "FlutterFramework", path: "../FlutterFramework"),
  ],
  targets: [
    .target(
      name: "blurhash_ffi",
      dependencies: [
        .product(name: "FlutterFramework", package: "FlutterFramework"),
      ],
    ),
  ],
)
