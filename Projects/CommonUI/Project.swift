import ProjectDescription

let project = Project(
    name: "CommonUI",
    targets: [
        .target(
            name: "CommonUI",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.CommonUI",
            sources: ["Sources/**"],
            dependencies: [
                .external(name: "PinLayout"),
                .external(name: "FlexLayout"),
                .external(name: "SnapKit"),
                .external(name: "Then")
            ]
//            ,
//            settings: .settings(configurations: [
//                .debug(name: "Debug", settings: [
//                    "GCC_PREPROCESSOR_DEFINITIONS": ["DEBUG=1", "OTHER_MACRO=1", "FLEXLAYOUT_SWIFT_PACKAGE=1"],
//                ]),
//                .release(name: "Release", settings: [
//                    "GCC_PREPROCESSOR_DEFINITIONS": ["RELEASE=1", "FLEXLAYOUT_SWIFT_PACKAGE=1"],
//                ])
//            ])
        )
    ]
)
