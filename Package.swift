// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "fltrBtc",
    platforms: [.iOS(.v14), .macOS(.v11)],
    products: [
        .library(
            name: "fltrBtc",
            targets: [ "fltrBtc", ]),
    ],
    dependencies: [
        .package(url: "https://github.com/fltrWallet/bech32", branch: "main"),
        .package(url: "https://github.com/fltrWallet/FastrangeSipHash", branch: "main"),
        .package(url: "https://github.com/fltrWallet/FileRepo", branch: "main"),
//      Experimental:
//      .package(url: "https://github.com/fltrWallet/fltrECC", branch: "main"),
        .package(url: "https://github.com/fltrWallet/fltrJET", branch: "main"),
        .package(url: "https://github.com/fltrWallet/fltrNode", branch: "main"),
        .package(url: "https://github.com/fltrWallet/fltrTx", branch: "main"),
        .package(url: "https://github.com/fltrWallet/fltrVault", branch: "main"),
        .package(url: "https://github.com/fltrWallet/fltrWAPI", branch: "main"),
        .package(url: "https://github.com/fltrWallet/HaByLo", branch: "main"),
        .package(url: "https://github.com/fltrWallet/KeyChainClient", branch: "main"),
        .package(url: "https://github.com/fltrWallet/NameResolver", branch: "main"),
        .package(url: "https://github.com/fltrWallet/UserDefaultsClient", branch: "main"),
        .package(url: "https://github.com/fltrWallet/Stream64", branch: "main"),
    ],
    targets: [
        .target(
            name: "fltrBtc",
            dependencies: [ "bech32",
                            "FastrangeSipHash",
                            "FileRepo",
//                          Experimental:
//                          "fltrECC",
                            "fltrJET",
                            "fltrNode",
                            "fltrTx",
                            "fltrVault",
                            "fltrWAPI",
                            "HaByLo",
                            "Stream64",
                            .product(name: "KeyChainClientAsync", package: "KeyChainClient"),
                            .product(name: "KeyChainClientLive", package: "KeyChainClient"),
                            .product(name: "LoadNode", package: "fltrNode"),
                            .product(name: "NameResolverFoundation", package: "NameResolver"),
                            .product(name: "UserDefaultsClientLive", package: "UserDefaultsClient"), ]),
    ]
)
