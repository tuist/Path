import ProjectDescription

let config = Config(
    cloud: .cloud(
        projectId: "tuist/path",
        url: "https://cloud.tuist.io",
        options: [.optional]
    ),
    swiftVersion: .init("5.10")
)
