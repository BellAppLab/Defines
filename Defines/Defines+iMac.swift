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
     Returns true if the model is an iMac.
     */
    public var isiMac: Bool {
        switch self {
        case .iMac_Early_2009,
             .iMac_Late_2009,
             .iMac_21_5_Inch_2010,
             .iMac_27_Inch_2010,
             .iMac_21_5_Inch_2011,
             .iMac_27_Inch_2011,
             .iMac_21_5_Inch_2012,
             .iMac_27_Inch_2012,
             .iMac_21_5_Inch_2013,
             .iMac_27_Inch_2013,
             .iMac_21_5_Inch_2014,
             .iMac_27_Inch_5K_2014,
             .iMac_21_5_Inch_2015,
             .iMac_21_5_4K_Inch_2015,
             .iMac_27_Inch_5K_2015,
             .iMac_21_5_Inch_2017,
             .iMac_21_5_4K_Inch_2017,
             .iMac_27_Inch_5K_2017:
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
     Returns true if the model is an iMac.
     */
    public static let isiMac: Bool = {
        return Defines.Device.currentModel.isiMac
    }()
}
