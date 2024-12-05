// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "swift-bug-cxx-staticstd",
    products: [
        .library(name: "Demo", targets: ["Demo"]),
        .executable(name: "exe", targets: ["exe"]),
    ],
    targets: [
        .target(name: "CxxCats"),
        .target(
            name: "Demo",
            dependencies: ["CxxCats"],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .executableTarget(
            name: "exe",
            dependencies: ["Demo"],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        )
    ],
    cxxLanguageStandard: .cxx17
)
