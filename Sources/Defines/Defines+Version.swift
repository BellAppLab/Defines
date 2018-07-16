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

import Foundation


//MARK: - Main
public extension Defines.Version
{
    //MARK: - Private
    /// Creates a new Version by converting strings into integers.
    private init(major: String = "",
                 minor: String = "",
                 patch: String = "",
                 build: String? = nil)
    {
        self.init(major: Int(major) ?? 0,
                  minor: Int(minor) ?? 0,
                  patch: Int(patch) ?? 0,
                  build: build ?? "")
    }

    //MARK: - Public
    /**
     Creates a new Version by parsing a versionString and a buildString.

     Example:

     ```
     let version = Defines.Version(versionString: "1.0.0", buildString: "3")
     print(version) //prints 'Version: 1.0.0 (3)'
     ```

     - parameters:
         - versionString:   a string representing a version, in the format **major**.**minor**.**patch**. Defaults to 0 if the string is malformed.
         - buildString:     a string representing a build. Any string is accepted. Defaults to an empty string.
     */
    public init(versionString: String,
                buildString: String? = nil)
    {
        let items = versionString.components(separatedBy: ".")
        switch items.count {
        case 0: self.init(build: buildString)
        case 1: self.init(major: items[0],
                          build: buildString)
        case 2: self.init(major: items[0],
                          minor: items[1],
                          build: buildString)
        default: self.init(major: items[0],
                           minor: items[1],
                           patch: items[2],
                           build: buildString)
        }
    }

    #if os(macOS)
    /**
     Creates a new Version by parsing an instance of `OperatingSystemVersion`.

     Example:

     ```
     let version = Defines.Version(operatingSystemVersion: aVersion)
     print(version) //prints 'Version: 1.0.0 (3)'
     ```

     - parameters:
         - operatingSystemVersion:   an instance of `OperatingSystemVersion`.
     */
    public init(operatingSystemVersion: OperatingSystemVersion)
    {
        self.init(major: operatingSystemVersion.majorVersion,
                  minor: operatingSystemVersion.minorVersion,
                  patch: operatingSystemVersion.patchVersion)
    }
    #endif
}


//MARK: - Equatable, Comparable, CustomStringConvertible
public extension Defines.Version
{
    /// Returns true if two `Version`s are equal.
    public static func == (lhs: Defines.Version,
                           rhs: Defines.Version) -> Bool
    {
        guard lhs.major == rhs.major else { return false }
        guard lhs.minor == rhs.minor else { return false }
        guard lhs.patch == rhs.patch else { return false }
        guard lhs.build == rhs.build else { return false }
        return true
    }

    /// Returns true if the left-side operand is lesser than the right-side.
    public static func < (lhs: Defines.Version,
                          rhs: Defines.Version) -> Bool
    {
        guard lhs != rhs else { return false }
        if lhs.major < rhs.major {
            return true
        }
        if lhs.major > rhs.major {
            return false
        }
        if lhs.minor < rhs.minor {
            return true
        }
        if lhs.minor > rhs.minor {
            return false
        }
        if lhs.patch < rhs.patch {
            return true
        }
        if lhs.patch > rhs.patch {
            return false
        }
        return lhs.build < rhs.build
    }

    /// Describes a `Version`.
    public var description: String {
        return "Version: \(major).\(minor).\(patch) (\(build))"
    }
}
