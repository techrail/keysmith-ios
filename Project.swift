import ProjectDescription

//App target constants
let projName = "Keysmith"
let orgName = "techRail"
let projBundleId = "in.techrail.keysmith"

//App unit test target constants
let projTestsName = projName+"Tests"
let projTestsBundleId = "in.techrail.keysmithTests"

//App UI test target constants
let projUITestsName = projName+"UITests"
let projUITestsBundleId = "in.techrail.keysmithUITests"

let appInfoPlist: [String: InfoPlist.Value] = [
    "UILaunchScreen": [:]
]


let appTarget = Target(
    name: projName,
    platform: .iOS,
    product: .app,
    bundleId: projBundleId,
    infoPlist: .extendingDefault(with: appInfoPlist),
    sources: ["source/**"],
    dependencies: [
        .external(name: "Dependiject")
    ]
)

let unitTestTarget = Target(
    name: projTestsName,
    platform: .iOS,
    product: .unitTests,
    bundleId: projTestsBundleId,
    infoPlist: .default,
    sources: ["\(projName)Tests/**"],
    dependencies: [
        .target(name: projName)
    ]
)

let uITestTarget = Target(
    name: projUITestsName,
    platform: .iOS,
    product: .uiTests,
    bundleId: projUITestsBundleId,
    infoPlist: .default,
    sources: ["\(projName)UITests/**"],
    dependencies: [
        .target(name: projName)
    ]
)

let project = Project(
    name: projName,
    targets: [
        appTarget,
        unitTestTarget,
        uITestTarget,
    ]
)
