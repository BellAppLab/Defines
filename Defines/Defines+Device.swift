// Adapted from: https://github.com/mattgallagher/CwlUtils/blob/master/Sources/CwlUtils/CwlSysctl.swift
//
//  CwlSysctl.swift
//  CwlUtils
//
//  Created by Matt Gallagher on 2016/02/03.
//  Copyright © 2016 Matt Gallagher ( http://cocoawithlove.com ). All rights reserved.
//
//  Permission to use, copy, modify, and/or distribute this software for any
//  purpose with or without fee is hereby granted, provided that the above
//  copyright notice and this permission notice appear in all copies.
//
//  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
//  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
//  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
//  SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
//  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
//  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR
//  IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
//
import Foundation


//MARK: - Aux
private struct Sysctl {
    /// Access the raw data for an array of sysctl identifiers.
    static func dataForKeys(_ keys: [Int32]) -> [Int8] {
        return keys.withUnsafeBufferPointer() { keysPointer -> [Int8] in
            // Preflight the request to get the required data size
            var requiredSize = 0
            let preFlightResult = Darwin.sysctl(UnsafeMutablePointer<Int32>(mutating: keysPointer.baseAddress), UInt32(keys.count), nil, &requiredSize, nil, 0)
            if preFlightResult != 0, let error = POSIXErrorCode(rawValue: errno) {
                print("\(error)")
            }

            // Run the actual request with an appropriately sized array buffer
            let data = Array<Int8>(repeating: 0, count: requiredSize)
            let result = data.withUnsafeBufferPointer() { dataBuffer -> Int32 in
                return Darwin.sysctl(UnsafeMutablePointer<Int32>(mutating: keysPointer.baseAddress), UInt32(keys.count), UnsafeMutableRawPointer(mutating: dataBuffer.baseAddress), &requiredSize, nil, 0)
            }
            if result != 0, let error = POSIXErrorCode(rawValue: errno) {
                print("\(error)")
            }

            return data
        }
    }

    /// Invoke `sysctl` with an array of identifers, interpreting the returned buffer as a `String`. This function will throw `Error.malformedUTF8` if the buffer returned from `sysctl` cannot be interpreted as a UTF8 buffer.
    static func stringForKeys(_ keys: [Int32]) -> String {
        let optionalString = dataForKeys(keys).withUnsafeBufferPointer() { dataPointer -> String? in
            dataPointer.baseAddress.flatMap { String(validatingUTF8: $0) }
        }
        return optionalString ?? ""
    }

    /// e.g. "MacPro4,1" or "iPhone8,1"
    /// NOTE: this is *corrected* on iOS devices to fetch hw.machine
    static var model: String {
        #if (os(iOS) || os(watchOS) || os(tvOS)) && !arch(x86_64) && !arch(i386)
        return Sysctl.stringForKeys([CTL_HW, HW_MACHINE])
        #else
        return Sysctl.stringForKeys([CTL_HW, HW_MODEL])
        #endif
    }
}

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

//MARK: - Main
public extension Defines.Device
{
    /**
     The `Defines.Device.Model` currently running your app.
     */
    public static let currentModel: Defines.Device.Model = {
        return Defines.Device.Model(rawValue: Sysctl.model)!
    }()

    /**
     Returns true if your app is running on iOS, watchOS or tvOS and on `i386` or `x86_64` architectures. Otherwise, false.
     */
    public static let isSimulator: Bool = {
        #if (arch(i386) || arch(x86_64)) && (os(iOS) || os(watchOS) || os(tvOS))
        return true
        #else
        return false
        #endif
    }()
}
