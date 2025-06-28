// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        productTypes: [
            "Alamofire": .framework,
            "PinLayout": .framework,
            "FlexLayout": .framework
        ]
    )
#endif

let package = Package(
    name: "PackageName",
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/layoutBox/PinLayout", .upToNextMajor(from: "1.10.5")),
        .package(url: "https://github.com/layoutBox/FlexLayout", .upToNextMajor(from: "1.3.18"))
    ]
)
