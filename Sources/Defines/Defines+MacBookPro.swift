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


//MARK: - Instance Variables
public extension Defines.Device.Model
{
    /**
     Returns true if the model is a MacBook Pro.
     */
    public var isMacBookPro: Bool {
        switch self {
        case .macBookPro_Early_2008,
             .macBookPro_Late_2008,
             .macBookPro_13_Inch_2009,
             .macBookPro_15_Inch_2009,
             .macBookPro_17_Inch_2009,
             .macBookPro_13_Inch_2010,
             .macBookPro_15_Inch_2010,
             .macBookPro_17_Inch_2010,
             .macBookPro_13_Inch_2011,
             .macBookPro_15_Inch_2011,
             .macBookPro_17_Inch_2011,
             .macBookPro_13_Inch_2012,
             .macBookPro_13_Inch_Retina_2012,
             .macBookPro_15_Inch_2012,
             .macBookPro_15_Inch_Retina_2012,
             .macBookPro_13_Inch_2013,
             .macBookPro_15_Inch_2013,
             .macBookPro_15_Inch_2013_2,
             .macBookPro_13_Inch_2015,
             .macBookPro_15_Inch_2015,
             .macBookPro_15_Inch_2015_2,
             .macBookPro_13_Inch_2_Thunderbolt_2016,
             .macBookPro_13_Inch_4_Thunderbolt_2016,
             .macBookPro_15_Inch_2016,
             .macBookPro_13_Inch_2_Thunderbolt_2017,
             .macBookPro_13_Inch_4_Thunderbolt_2017,
             .macBookPro_15_Inch_2017,
             .macBookPro_13_Inch_2018,
             .macBookPro_15_Inch_2018:
            return true
        default:
            return false
        }
    }
}


//MARK: - Static Variables
public extension Defines.Device
{
    /**
     Returns true if the model is a MacBook Pro.
     */
    public static let isMacBookPro: Bool = {
        return Defines.Device.currentModel.isMacBookPro
    }()
}
