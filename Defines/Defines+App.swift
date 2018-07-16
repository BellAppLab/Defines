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
public extension Defines.App
{
    /**
     Returns a bundle's name for a class.

     It fetches a bundle using `Bundle(for: class)` and tries to get its Info.plist `CFBundleDisplayName`. If nothing is found, it falls back to `CFBundleName`.

     Example:

     ```
     if let appName = Defines.App.name(forClass: AppDelegate.self) {
        print(appName) //prints 'Your App's Name'
     }
     ```

     - parameters:
         - aClass:  The class to be used to retrieve a bundle using `Bundle(for: class)`.
     */
    static func name(forClass aClass: AnyClass) -> String? {
        let bundle = Bundle(for: aClass)
        if let displayName = bundle.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String {
            return displayName
        }
        return bundle.object(forInfoDictionaryKey: "CFBundleName") as? String
    }

    /**
     Returns a bundle's version for a class.

     It fetches a bundle using `Bundle(for: class)` and tries to get its Info.plist `CFBundleShortVersionString` and `CFBundleVersion`.

     Example:

     ```
     if let appVersion = Defines.App.version(forClass: AppDelegate.self) {
         print(appVersion) //prints '1.0.0 (1)'
     }
     ```

     - parameters:
         - aClass:  The class to be used to retrieve a bundle using `Bundle(for: class)`.
     - returns:
        A `Defines.Version` instance populated with the Info.plist Info.plist `CFBundleShortVersionString` and `CFBundleVersion`.
     */
    static func version(forClass aClass: AnyClass) -> Defines.Version {
        let bundle = Bundle(for: aClass)
        return Defines.Version(versionString: (bundle.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String) ?? "",
                               buildString: bundle.object(forInfoDictionaryKey: "CFBundleVersion") as? String)
    }
}
