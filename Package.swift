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
            url: "https://github.com/gsl-sebastienpecoul/GEOSwift/releases/download/11.2.0-b3/geos.xcframework.zip",
            checksum: "4655d6b38d3313282ae9609d314428c91b26962a2cce56569e5ab26657c08c2a"
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
