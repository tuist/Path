import ProjectDescription

let project = Project(name: "Path", targets: [
    .target(name: "Path", destinations: .macOS, product: .staticLibrary, bundleId: "io.tuist.Path", sources: [
        "Sources/Path/**/*.swift",
    ]),
])
