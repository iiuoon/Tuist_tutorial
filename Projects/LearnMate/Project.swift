import ProjectDescription

let project = Project(
    name: "LearnMate",
    targets: [
        .target(
            name: "LearnMate",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.LearnMate",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .project(target: "CommonUI", path: "../CommonUI"),
                .external(name: "Alamofire"),
                .external(name: "PinLayout"),
                .external(name: "FlexLayout"),
                .external(name: "SnapKit"),
                .external(name: "Then")
            ]
        ),
        .target(
            name: "LearnMateTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.LearnMateTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [
                .target(name: "LearnMate")
            ]
        ),
    ]
)
