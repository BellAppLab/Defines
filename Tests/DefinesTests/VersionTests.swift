import XCTest
#if os(iOS)
@testable import iOS_Example
#endif
#if os(tvOS)
@testable import tvOS_Example
#endif
#if os(macOS)
@testable import macOS_Example
#endif
@testable import Defines


class VersionTests: XCTestCase
{
    func testVersionInitAndDescription() {
        var version = Defines.Version(major: 1, minor: 2, patch: 3, build: "a")
        XCTAssertTrue(version.major == 1, "The version major number should be '1'")
        XCTAssertTrue(version.minor == 2, "The version minor number should be '2'")
        XCTAssertTrue(version.patch == 3, "The version patch number should be '3'")
        XCTAssertTrue(version.build == "a", "The version build should be 'a'")
        XCTAssertTrue(version.description == "Version: 1.2.3 (a)", "The version description should be 'App Version: 1.2.3 (a)'")

        version = Defines.Version(major: -1, minor: -2, patch: -3)
        XCTAssertTrue(version.major == 0, "The version major number should be '0'")
        XCTAssertTrue(version.minor == 0, "The version minor number should be '0'")
        XCTAssertTrue(version.patch == 0, "The version patch number should be '0'")
        XCTAssertTrue(version.build == "", "The version build should be an empty string")
        XCTAssertTrue(version.description == "Version: 0.0.0 ()", "The version description should be 'App App Version: 0.0.0 ()'")
    }

    func testVersionForCurrentApp() {
        let bundle = Bundle(for: AppDelegate.self)
        let versionString = bundle.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        let buildString = bundle.object(forInfoDictionaryKey: "CFBundleVersion") as? String ?? ""
        let items = versionString?.components(separatedBy: ".") ?? []
        let currentVersion: Defines.Version
        switch items.count {
        case 0: currentVersion = Defines.Version(build: buildString)
        case 1: currentVersion = Defines.Version(major: Int(items[0]) ?? 0,
                                                 build: buildString)
        case 2: currentVersion = Defines.Version(major: Int(items[0]) ?? 0,
                                                 minor: Int(items[1]) ?? 0,
                                                 build: buildString)
        default: currentVersion = Defines.Version(major: Int(items[0]) ?? 0,
                                                  minor: Int(items[1]) ?? 0,
                                                  patch: Int(items[2]) ?? 0,
                                                  build: buildString)
        }

        print("CURRENT VERSION: \(currentVersion)")

        let version = Defines.App.version(forClass: AppDelegate.self)

        print("VERSION: \(version)")

        XCTAssertEqual(version.description, currentVersion.description, "The app's current version should be the same as the one got through Defines.App.Version.for(class:)")
    }

    func testVersionEquatable() {
        var version1 = Defines.Version(major: 0, minor: 0, patch: 1, build: "")
        var version2 = Defines.Version(major: 0, minor: 0, patch: 1, build: "")

        XCTAssertEqual(version1, version2, "Version 0.0.1 () should be equal to Version 0.0.1 ()")

        version1 = Defines.Version(major: 0, minor: 1, patch: 0, build: "")
        version2 = Defines.Version(major: 0, minor: 1, patch: 0, build: "")

        XCTAssertEqual(version1, version2, "Version 0.1.0 () should be equal to Version 0.1.0 ()")

        version1 = Defines.Version(major: 1, minor: 0, patch: 0, build: "")
        version2 = Defines.Version(major: 1, minor: 0, patch: 0, build: "")

        XCTAssertEqual(version1, version2, "Version 1.0.0 () should be equal to Version 1.0.0 ()")

        version1 = Defines.Version(major: 2, minor: 1, patch: 0, build: "")

        XCTAssertNotEqual(version1, version2, "Version 2.1.0 () should NOT be equal to Version 1.0.0 ()")

        version2 = Defines.Version(major: 0, minor: 1, patch: 3, build: "hey")

        XCTAssertNotEqual(version1, version2, "Version 2.1.0 () should NOT be equal to Version 0.1.3 (hey)")

        version2 = Defines.Version(major: 2, minor: 1, patch: 0, build: "hey")

        XCTAssertNotEqual(version1, version2, "Version 2.1.0 () should NOT be equal to Version 2.1.0 (hey)")
    }

    func testVersionComparable() {
        var version1 = Defines.Version(major: 0, minor: 0, patch: 0, build: "")
        var version2 = Defines.Version(major: 0, minor: 0, patch: 1, build: "")

        XCTAssertTrue(version1 < version2, "Version 0.0.0 () should be lesser than to Version 0.0.1 ()")
        XCTAssertFalse(version1 > version2, "Version 0.0.0 () shouldn't be greater than to Version 0.0.1 ()")

        version1 = Defines.Version(major: 0, minor: 0, patch: 0, build: "a")
        version2 = Defines.Version(versionString: "0.0.0")

        XCTAssertFalse(version1 < version2, "Version 0.0.0 (a) should be lesser than to Version 0.0.0 ()")
        XCTAssertTrue(version1 > version2, "Version 0.0.0 (a) should be greater than to Version 0.0.0 ()")

        version1 = Defines.Version(major: 0, minor: 0, patch: 1, build: "")
        version2 = Defines.Version(major: 0, minor: 0, patch: 1, build: "")

        XCTAssertTrue(version1 <= version2, "Version 0.0.1 () should be lesser than or equal to Version 0.0.1 ()")
        XCTAssertFalse(version1 > version2, "Version 0.0.1 () shouldn't be greater than to Version 0.0.1 ()")

        version2 = Defines.Version(major: 0, minor: 0, patch: 2, build: "")

        XCTAssertTrue(version1 < version2, "Version 0.0.1 () should be lesser than or equal to Version 0.0.2 ()")
        XCTAssertFalse(version1 > version2, "Version 0.0.1 () shouldn't be greater than to Version 0.0.2 ()")

        version2 = Defines.Version(major: 0, minor: 1, patch: 0, build: "")

        XCTAssertTrue(version1 < version2, "Version 0.0.1 () should be lesser than or equal to Version 0.1.0 ()")
        XCTAssertFalse(version1 > version2, "Version 0.0.1 () shouldn't be greater than to Version 0.1.0 ()")

        version2 = Defines.Version(major: 1, minor: 0, patch: 0, build: "")

        XCTAssertTrue(version1 < version2, "Version 0.0.1 () should be lesser than or equal to Version 1.0.0 ()")
        XCTAssertFalse(version1 > version2, "Version 0.0.1 () shouldn't be greater than to Version 1.0.0 ()")

        version1 = Defines.Version(major: 1, minor: 1, patch: 0, build: "")
        version2 = Defines.Version(major: 1, minor: 1, patch: 1, build: "")

        XCTAssertTrue(version1 < version2, "Version 1.1.0 () should be lesser than or equal to Version 1.1.1 ()")
        XCTAssertFalse(version1 > version2, "Version 1.1.0 () shouldn't be greater than to Version 1.1.1 ()")
    }
}
