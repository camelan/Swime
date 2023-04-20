// swift-tools-version:5.7.1
import PackageDescription

let package = Package(
  name: "Swime",
  platforms: [
    .iOS(.v14),
  ],
  products: [
    .library(name: "Swime", targets: ["Swime"])
  ],
  dependencies: [
    .package(url: "https://github.com/Quick/Quick", from: "6.1.0"),
    .package(url: "https://github.com/Quick/Nimble", from: "12.0.0")
  ],
  targets: [
    .target(
      name: "Swime",
      path: "./Sources"
   ),
    .testTarget(
      name: "SwimeTests",
      dependencies: [
        "Swime",
        "Quick",
        "Nimble"
      ]
    )
  ]
)
