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


class DefinesTests: XCTestCase
{    
    func testBundle() {
        let bundleId = Bundle.id(forClass: AppDelegate.self)
        #if os(iOS)
        let expectedBundleId = "com.bellapplab.iOS-Example"
        #endif
        #if os(tvOS)
        let expectedBundleId = "com.bellapplab.tvOS-Example"
        #endif
        #if os(macOS)
        let expectedBundleId = "com.bellapplab.macOS-Example"
        #endif
        XCTAssertNotNil(bundleId, "The bundle id shouldn't be nil")
        XCTAssertEqual(bundleId!, expectedBundleId, "The bundle id should be equal to '\(expectedBundleId)'")
    }

    func testAppName() {
        let appName = Defines.App.name(forClass: AppDelegate.self)
        #if os(iOS)
        let expectedAppName = "iOS Example"
        #endif
        #if os(tvOS)
        let expectedAppName = "tvOS Example"
        #endif
        #if os(macOS)
        let expectedAppName = "macOS Example"
        #endif
        XCTAssertNotNil(appName, "The app name shouldn't be nil")
        XCTAssertEqual(appName!, expectedAppName, "The app name should be equal to '\(expectedAppName)'")
    }

    func testSimulator() {
        #if swift(>=4.1)
        #if targetEnvironment(simulator)
        let simulator = true
        #else
        let simulator = false
        #endif
        #else
        #if (arch(i386) || arch(x86_64)) && (os(iOS) || os(watchOS) || os(tvOS))
        let simulator = true
        #else
        let simulator = false
        #endif
        #endif

        XCTAssertEqual(Defines.Device.isSimulator, simulator, "When running on the simulator, `isSimulator` should return true.")
    }
}
