// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BindingHelper",
    platforms: [
        .iOS(.v15), .macOS(.v12), //.watchOS(.v8)
    ],
    products: [
        .library(
            name: "BindingHelper",
            targets: ["BindingHelper"]),
    ],
    /* To generate static documentation in a deleted docs directory enter in terminal:
     cd ~/Documents/Apps/RemoteSwiftPackages/LockApp
     swift package --allow-writing-to-directory ~/Documents/Apps/RemoteSwiftPackages/LockApp/docs generate-documentation --target LockApp --disable-indexing --transform-for-static-hosting --hosting-base-path LockApp --output-path ~/Documents/Apps/RemoteSwiftPackages/LockApp/docs
     */
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "BindingHelper",
            dependencies: []),
    ]
)
