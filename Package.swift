// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "GEOSwift",
    platforms: [.iOS(.v12), .macOS(.v10_13), .tvOS(.v12), .watchOS(.v4)],
    products: [
        .library(name: "GEOSwift", targets: ["GEOSwift"])
    ],
    targets: [
        .binaryTarget(
            name: "geos",
            url: "https://github.com/gsl-sebastienpecoul/GEOSwift/releases/download/11.2.0-b2/geos.xcframework.zip",
            checksum: "574bbd5b9404ad4321d614d54db168863b78c4ec79af71044bef0237afb1efff"
        ),
        .target(
            name: "GEOSwift",
            dependencies: ["geos"]
        ),
        .testTarget(
            name: "GEOSwiftTests",
            dependencies: ["GEOSwift"]
        )
    ]
)
