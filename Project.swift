import ProjectDescription

let project = Project(name: "Path", targets: [
    .target(name: "Path", destinations: .macOS, product: .staticLibrary, bundleId: "dev.tuist.Path", sources: [
        "Sources/Path/**/*.swift",
    ]),
    .target(name: "PathTests", destinations: .macOS, product: .unitTests, bundleId: "dev.tuist.PathTests", sources: [
        "Tests/PathTests/**/*.swift"
    ], dependencies: [.target(name: "Path")])
])
