// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "APSSPMediationNAM",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "APSSPMediationNAM", targets: ["APSSPMediationNAM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IGAWorksDev/ap-APSSPSDK-SPM.git", from: "3.4.0"),
        .package(url: "https://github.com/naver/nam-sdk-ios.git", exact: "8.16.0"),
    ],
    targets: [
        .target(name: "APSSPMediationNAM",
                dependencies: [
                    .product(name: "APSSPSDK", package: "ap-APSSPSDK-SPM"),
                    .product(name: "GFPSDK", package: "nam-sdk-ios"),
                ],
                path: "Sources/MediationNAM"),
    ]
)
