import ProjectDescription

let dependacies = Dependencies(
    swiftPackageManager: [
    .remote(url: "https://github.com/Tiny-Home-Consulting/Dependiject.git", requirement: .exact("1.0.0"))
],
    platforms: [.iOS]
)
