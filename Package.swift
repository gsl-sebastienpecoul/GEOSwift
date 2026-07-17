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
            url: "https://github.com/gsl-sebastienpecoul/GEOSwift/releases/download/11.2.0-binary/geos.xcframework.zip",
            checksum: "ff281779ea6e3a3d19c495d963da209605e37f39e59fde631235e65784c721da"
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
