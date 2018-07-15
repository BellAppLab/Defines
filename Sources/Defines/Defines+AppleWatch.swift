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


public extension Defines.Device.Model
{
    public var isAppleWatch: Bool {
        switch self {
        case .appleWatch_1stGeneration_38mm,
             .appleWatch_1stGeneration_42mm,
             .appleWatchSeries1_38mm,
             .appleWatchSeries1_42mm,
             .appleWatchSeries2_38mm,
             .appleWatchSeries2_42mm,
             .appleWatchSeries3_38mm_GPS_Cellular,
             .appleWatchSeries3_42mm_GPS_Cellular,
             .appleWatchSeries3_38mm_GPS,
             .appleWatchSeries3_42mm_GPS:
            return true
        default:
            return false
        }
    }
}


public extension Defines.Device
{
    public static let isAppleWatch: Bool = {
        return Defines.Device.model.isAppleWatch
    }()
}
