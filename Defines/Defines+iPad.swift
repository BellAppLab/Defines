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
     Returns true if the model is an iPad.
     */
    public var isiPad: Bool {
        switch self {
        case .iPad_2,
             .iPad_2_GSM,
             .iPad_2_CDMA,
             .iPad_2_2,
             .iPad_3rdGeneration,
             .iPad_3rdGeneration_Verizon,
             .iPad_3rdGeneration_GSM,
             .iPad_4thGeneration,
             .iPad_4thGeneration_CDMA,
             .iPad_4thGeneration_MM,
             .iPadAir,
             .iPadAir_GSM,
             .iPadAir_TD_LTE,
             .iPadAir_2,
             .iPadAir_2_Cellular,
             .iPadPro_12_9_Inch,
             .iPadPro_12_9_Inch_Cellular,
             .iPadPro_9_7_Inch,
             .iPadPro_9_7_Inch_Cellular,
             .iPad_5thGeneration,
             .iPad_5thGeneration_Cellular,
             .iPadPro_12_9_Inch_2ndGeneration,
             .iPadPro_12_9_Inch_2ndGeneration_Cellular,
             .iPadPro_10_5_Inch,
             .iPadPro_10_5_Inch_Cellular,
             .iPad_6thGeneration,
             .iPad_6thGeneration_Cellular,
             .iPad_Mini,
             .iPad_Mini_CDMA,
             .iPad_Mini_MM,
             .iPad_Mini_2,
             .iPad_Mini_2_GSM,
             .iPad_Mini_2_TD_LTE,
             .iPad_Mini_3,
             .iPad_Mini_3_GSM,
             .iPad_Mini_3_China,
             .iPad_Mini_4,
             .iPad_Mini_4_GSM:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the model is a regular iPad (eg. iPad 2, iPad (3rd Generation), iPad (4th Generation), iPad air, iPad air 2, iPad Pro 9.7", iPad (5th Generation) and iPad (6th Generation)).
     */
    public var isiPadRegular: Bool {
        switch self {
        case .iPad_2,
             .iPad_2_GSM,
             .iPad_2_CDMA,
             .iPad_2_2,
             .iPad_3rdGeneration,
             .iPad_3rdGeneration_Verizon,
             .iPad_3rdGeneration_GSM,
             .iPad_4thGeneration,
             .iPad_4thGeneration_CDMA,
             .iPad_4thGeneration_MM,
             .iPadAir,
             .iPadAir_GSM,
             .iPadAir_TD_LTE,
             .iPadAir_2,
             .iPadAir_2_Cellular,
             .iPadPro_9_7_Inch,
             .iPadPro_9_7_Inch_Cellular,
             .iPad_5thGeneration,
             .iPad_5thGeneration_Cellular,
             .iPad_6thGeneration,
             .iPad_6thGeneration_Cellular:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the model is an iPad air (eg. iPad air and iPad air 2).
     */
    public var isiPadAir: Bool {
        switch self {
        case .iPadAir,
             .iPadAir_GSM,
             .iPadAir_TD_LTE,
             .iPadAir_2,
             .iPadAir_2_Cellular:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the model is an iPad Pro (eg. iPad Pro 9.7", iPad Pro 10.5" and iPad Pro 12.9").
     */
    public var isiPadPro: Bool {
        switch self {
        case .iPadPro_12_9_Inch,
             .iPadPro_12_9_Inch_Cellular,
             .iPadPro_9_7_Inch,
             .iPadPro_9_7_Inch_Cellular,
             .iPadPro_12_9_Inch_2ndGeneration,
             .iPadPro_12_9_Inch_2ndGeneration_Cellular,
             .iPadPro_10_5_Inch,
             .iPadPro_10_5_Inch_Cellular:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the model is an iPad mini (eg. iPad mini, iPad mini 2, iPad mini 3 and iPad mini 4).
     */
    public var isiPadMini: Bool {
        switch self {
        case .iPad_Mini,
             .iPad_Mini_CDMA,
             .iPad_Mini_MM,
             .iPad_Mini_2,
             .iPad_Mini_2_GSM,
             .iPad_Mini_2_TD_LTE,
             .iPad_Mini_3,
             .iPad_Mini_3_GSM,
             .iPad_Mini_3_China,
             .iPad_Mini_4,
             .iPad_Mini_4_GSM:
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
     Returns true if the model is an iPad.
     */
    public static let isiPad: Bool = {
        return Defines.Device.currentModel.isiPad
    }()

    /**
     Returns true if the model is a regular iPad (eg. iPad 2, iPad (3rd Generation), iPad (4th Generation), iPad air, iPad air 2, iPad Pro 9.7", iPad (5th Generation) and iPad (6th Generation)).
     */
    public static let isiPadRegular: Bool = {
        return Defines.Device.currentModel.isiPadRegular
    }()

    /**
     Returns true if the model is an iPad air (eg. iPad air and iPad air 2).
     */
    public static let isiPadAir: Bool = {
        return Defines.Device.currentModel.isiPadAir
    }()

    /**
     Returns true if the model is an iPad Pro (eg. iPad Pro 9.7", iPad Pro 10.5" and iPad Pro 12.9").
     */
    public static let isiPadPro: Bool = {
        return Defines.Device.currentModel.isiPadPro
    }()

    /**
     Returns true if the model is an iPad mini (eg. iPad mini, iPad mini 2, iPad mini 3 and iPad mini 4).
     */
    public static let isiPadMini: Bool = {
        return Defines.Device.currentModel.isiPadMini
    }()
}
