// swift-tools-version:5.3

import Foundation
import PackageDescription

let SCADE_SDK = ProcessInfo.processInfo.environment["SCADE_SDK"] ?? ""

let package = Package(
  name: "Messenger",
  platforms: [
    .macOS(.v10_14)
  ],
  products: [
    .library(
      name: "Messenger",
      type: .static,
      targets: [
        "Messenger"
      ]
    )
  ],
  dependencies: [
    .package(
      name: "firebase-ios-sdk", url: "https://github.com/firebase/firebase-ios-sdk.git",
      .branch("master"))
  ],
  targets: [
    .target(
      name: "Messenger",
      dependencies: [
        .product(name: "FirebaseAuth", package: "firebase-ios-sdk")
      ],
      exclude: ["main.page"],
      swiftSettings: [
        .unsafeFlags(["-F", SCADE_SDK], .when(platforms: [.macOS, .iOS])),
        .unsafeFlags(["-I", "\(SCADE_SDK)/include"], .when(platforms: [.android])),
      ]
    )
  ]
)
