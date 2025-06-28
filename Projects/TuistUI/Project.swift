import ProjectDescription

let project = Project(
    name: "TuistUI",
    targets: [
        .target(
            name: "TuistUI",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "io.tuist.TuistUI",
            sources: ["Sources/**"],
            dependencies: []
        )
    ]
)
