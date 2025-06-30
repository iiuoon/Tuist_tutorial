import ProjectDescription

let project = Project(
    name: "MyPage",
    targets: [
        .target(
            name: "MyPage",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.MyPage",
            sources: ["Sources/**"],
            dependencies: [
                .external(name: "SnapKit"),
                .external(name: "Then"),
                .project(target: "Domain", path: "../Domain"),
                .project(target: "Common", path: "../Common"),
                .project(target: "CommonUI", path: "../CommonUI")
            ]
        ),
        .target(
            name: "MyPageTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.MyPageTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [
                .target(name: "MyPage")
            ]
        )
    ]
)
