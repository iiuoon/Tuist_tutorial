import ProjectDescription

let project = Project(
    name: "TuistApp",
    targets: [
        .target(
            name: "TuistApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TuistApp",
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
                .project(target: "TuistUI", path: "../TuistUI"),
                .external(name: "Alamofire"),
                .external(name: "PinLayout"),
                .external(name: "FlexLayout")
            ]
        ),
        .target(
            name: "TuistAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TuistAppTests",
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [
                .target(name: "TuistApp")
            ]
        ),
    ]
)
