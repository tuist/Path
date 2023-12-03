import ProjectDescription

let project = Project(name: "Path", targets: [
    Target(name: "Path", platform: .macOS, product: .staticLibrary, bundleId: "io.tuist.Path", sources: [
        "Sources/Path/**/*.swift"
    ])
])
