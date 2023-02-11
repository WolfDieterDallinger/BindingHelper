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
    /* To generate static documentation in a deleted docs directory uncomment swift-docc-plugin in dependencies and enter with appropriate directory in terminal:
     cd ~/Documents/Apps/RemoteSwiftPackages/BindingHelper
     swift package --allow-writing-to-directory ~/Documents/Apps/RemoteSwiftPackages/BindingHelper/docs  generate-documentation --target BindingHelper --disable-indexing --transform-for-static-hosting --hosting-base-path BindingHelper --output-path ~/Documents/Apps/RemoteSwiftPackages/BindingHelper/docs
     
     To generate static documentation with extended types in a deleted docs directory uncomment swift-docc-plugin in dependencies and enter with appropriate directory and appropriate swift 5.8 toolchain identifier (you will find it in the toolchains plist file) in terminal:
      cd ~/Documents/Apps/RemoteSwiftPackages/BindingHelper
      swift package --toolchain org.swift.58202302091a update swift-docc-plugin
      swift package --toolchain org.swift.58202302091a --allow-writing-to-directory ~/Documents/Apps/RemoteSwiftPackages/BindingHelper/docs  generate-documentation --target BindingHelper --disable-indexing --transform-for-static-hosting --hosting-base-path BindingHelper --output-path ~/Documents/Apps/RemoteSwiftPackages/BindingHelper/docs --include-extended-types
     */
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", branch: "main"), // With extended types.
        //.package(url: "https://github.com/apple/swift-docc-plugin", from: "1.1.0"),
    ],
    targets: [
        .target(
            name: "BindingHelper",
            dependencies: []),
    ]
)
