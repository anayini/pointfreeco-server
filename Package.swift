// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "pointfreeco",
  products: [
    .executable(name: "pointfreeco", targets: ["pointfreeco"]),
  ],
  dependencies: [
    .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "2.0.0"),
    .package(url: "https://github.com/IBM-Swift/Kitura-Compression", from: "2.0.1"),
    .package(url: "https://github.com/pointfreeco/pointfreeco.git", .revision("f62cfd7")),

  ],
  targets: [
    .target(
      name: "pointfreeco",
      dependencies: [
        "Kitura",
        "KituraCompression",
        "PointFree",
      ]
    ),
  ],
  swiftLanguageVersions: [4]
)
