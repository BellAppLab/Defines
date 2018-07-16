/*
 Copyright (c) 2018 Bell App Lab <apps@bellapplab.com>

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

#if os(iOS) || os(tvOS)
import UIKit
#endif
#if os(watchOS)
import WatchKit
#endif
#if os(macOS)
import AppKit
#endif


//MARK: - Main
public extension Defines.OS
{
    /// The version of the OS currently running your app (aka `UIDevice.current.systemVersion`)
    public static let version: Defines.Version = {
        #if os(iOS) || os(tvOS)
        return Defines.Version(versionString: UIDevice.current.systemVersion)
        #endif
        #if os(watchOS)
        return Defines.Version(versionString: WKInterfaceDevice.current().systemVersion)
        #endif
        #if os(macOS)
        return Defines.Version(operatingSystemVersion: ProcessInfo.processInfo.operatingSystemVersion)
        #endif
    }()

    /// Returns true when running on iOS.
    public static let isiOS: Bool = {
        #if os(iOS)
        return true
        #else
        return false
        #endif
    }()

    /// Returns true when running on watchOS.
    public static let isWatchOS: Bool = {
        #if os(watchOS)
        return true
        #else
        return false
        #endif
    }()

    /// Returns true when running on tvOS.
    public static let istvOS: Bool = {
        #if os(tvOS)
        return true
        #else
        return false
        #endif
    }()

    /// Returns true when running on macOS.
    public static let isMacOS: Bool = {
        #if os(macOS)
        return true
        #else
        return false
        #endif
    }()
}
