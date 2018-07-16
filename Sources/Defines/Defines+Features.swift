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
     Returns the year the model has been first released in.
     */
    public var year: Int {
        switch self {
        case .unknown:
            return -1
        case .macBookPro_Early_2008,
             .macBookPro_Late_2008:
            return 2008
        case .macBookAir_2009,
             .macMini_2009,
             .macBook_Early_2009,
             .macBook_Late_2009,
             .macBookPro_13_Inch_2009,
             .macBookPro_15_Inch_2009,
             .macBookPro_17_Inch_2009,
             .iMac_Early_2009,
             .iMac_Late_2009,
             .macPro_2009:
            return 2009
        case .appleTV_2ndGeneration,
             .macBookAir_11_Inch_2010,
             .macBookAir_13_Inch_2010,
             .macBook_2010,
             .macBookPro_13_Inch_2010,
             .macBookPro_15_Inch_2010,
             .macBookPro_17_Inch_2010,
             .macMini_2010,
             .iMac_21_5_Inch_2010,
             .iMac_27_Inch_2010,
             .macPro_2010:
            return 2010
        case .iPad_2,
             .iPad_2_GSM,
             .iPad_2_CDMA,
             .iPad_2_2,
             .iPhone4s,
             .macBookAir_11_Inch_2011,
             .macBookAir_13_Inch_2011,
             .macBookPro_13_Inch_2011,
             .macBookPro_15_Inch_2011,
             .macBookPro_17_Inch_2011,
             .macMini_2011,
             .macMini_2011_2,
             .iMac_21_5_Inch_2011,
             .iMac_27_Inch_2011:
            return 2011
        case .appleTV_3rdGeneration,
             .iPad_3rdGeneration,
             .iPad_3rdGeneration_Verizon,
             .iPad_3rdGeneration_GSM,
             .iPad_4thGeneration,
             .iPad_4thGeneration_CDMA,
             .iPad_4thGeneration_MM,
             .iPadAir,
             .iPadAir_GSM,
             .iPadAir_TD_LTE,
             .iPad_Mini,
             .iPad_Mini_CDMA,
             .iPad_Mini_MM,
             .iPhone5,
             .iPhone5_2,
             .iPodTouch_5thGeneration,
             .macBookAir_11_Inch_2012,
             .macBookAir_13_Inch_2012,
             .macBookPro_13_Inch_2012,
             .macBookPro_13_Inch_Retina_2012,
             .macBookPro_15_Inch_2012,
             .macBookPro_15_Inch_Retina_2012,
             .macMini_2012,
             .macMini_2012_2,
             .iMac_21_5_Inch_2012,
             .iMac_27_Inch_2012:
            return 2012
        case .appleTV_3rdGeneration_2,
             .iPad_Mini_2,
             .iPad_Mini_2_GSM,
             .iPad_Mini_2_TD_LTE,
             .iPhone5c_NorthAmerica_Japan,
             .iPhone5c_Europe_Asia,
             .iPhone5s_NorthAmerica_Japan,
             .iPhone5s_Europe_Asia,
             .macBookAir_11_Inch_2013,
             .macBookAir_13_Inch_2013,
             .macBookPro_13_Inch_2013,
             .macBookPro_15_Inch_2013,
             .macBookPro_15_Inch_2013_2,
             .iMac_21_5_Inch_2013,
             .iMac_27_Inch_2013,
             .macPro_2013:
            return 2013
        case .iPadAir_2,
             .iPadAir_2_Cellular,
             .iPad_Mini_3,
             .iPad_Mini_3_GSM,
             .iPad_Mini_3_China,
             .iPhone6,
             .iPhone6Plus,
             .macMini_2014,
             .iMac_21_5_Inch_2014,
             .iMac_27_Inch_5K_2014:
            return 2014
        case .appleTV_4thGeneration,
             .appleWatch_1stGeneration_38mm,
             .appleWatch_1stGeneration_42mm,
             .iPad_Mini_4,
             .iPad_Mini_4_GSM,
             .iPadPro_12_9_Inch,
             .iPadPro_12_9_Inch_Cellular,
             .iPhone6s,
             .iPhone6sPlus,
             .iPodTouch_6thGeneration,
             .macBookAir_11_Inch_2015,
             .macBookAir_13_Inch_2015,
             .macBook_2015,
             .macBookPro_13_Inch_2015,
             .macBookPro_15_Inch_2015,
             .macBookPro_15_Inch_2015_2,
             .iMac_21_5_Inch_2015,
             .iMac_21_5_4K_Inch_2015,
             .iMac_27_Inch_5K_2015:
            return 2015
        case .appleWatchSeries1_38mm,
             .appleWatchSeries1_42mm,
             .appleWatchSeries2_38mm,
             .appleWatchSeries2_42mm,
             .iPadPro_9_7_Inch,
             .iPadPro_9_7_Inch_Cellular,
             .iPhoneSE,
             .iPhone7_CDMA,
             .iPhone7_Global,
             .iPhone7Plus_CDMA,
             .iPhone7Plus_Global,
             .macBook_2016,
             .macBookPro_13_Inch_2_Thunderbolt_2016,
             .macBookPro_13_Inch_4_Thunderbolt_2016,
             .macBookPro_15_Inch_2016:
            return 2016
        case .airPods,
             .appleTV_4K,
             .appleWatchSeries3_38mm_GPS_Cellular,
             .appleWatchSeries3_42mm_GPS_Cellular,
             .appleWatchSeries3_38mm_GPS,
             .appleWatchSeries3_42mm_GPS,
             .iPad_5thGeneration,
             .iPad_5thGeneration_Cellular,
             .iPadPro_12_9_Inch_2ndGeneration,
             .iPadPro_12_9_Inch_2ndGeneration_Cellular,
             .iPadPro_10_5_Inch,
             .iPadPro_10_5_Inch_Cellular,
             .iPhone8,
             .iPhone8_2,
             .iPhone8Plus,
             .iPhone8Plus_2,
             .iPhoneX,
             .iPhoneX_2,
             .macBook_2017,
             .macBookPro_13_Inch_2_Thunderbolt_2017,
             .macBookPro_13_Inch_4_Thunderbolt_2017,
             .macBookPro_15_Inch_2017,
             .iMac_21_5_Inch_2017,
             .iMac_21_5_4K_Inch_2017,
             .iMac_27_Inch_5K_2017:
            return 2017
        case .homePod_1,
             .homePod_2,
             .iPad_6thGeneration,
             .iPad_6thGeneration_Cellular,
             .macBookPro_13_Inch_2018,
             .macBookPro_15_Inch_2018:
            return 2018
        }
    }

    /**
     Returns true if the model has GPS capabilities.

     - warning:
        Do **not** rely on this flag to execute code that requires the GPS to be present. Use `CoreLocation` to do that.

        This flag is only here because some devices' names encode the presence of a GPS and we thought it'd be useful to translate that into a boolean. That's all.
     */
    public var hasGPS: Bool {
        switch self {
        case .appleWatchSeries3_38mm_GPS,
             .appleWatchSeries3_42mm_GPS,
             .appleWatchSeries3_38mm_GPS_Cellular,
             .appleWatchSeries3_42mm_GPS_Cellular:
            return true
        case .iPad_2_GSM,
             .iPad_2_CDMA,
             .iPad_3rdGeneration_Verizon,
             .iPad_3rdGeneration_GSM,
             .iPad_4thGeneration_CDMA,
             .iPad_4thGeneration_MM,
             .iPadAir_GSM,
             .iPadAir_TD_LTE,
             .iPadAir_2_Cellular,
             .iPadPro_12_9_Inch_Cellular,
             .iPadPro_9_7_Inch_Cellular,
             .iPad_5thGeneration_Cellular,
             .iPadPro_12_9_Inch_2ndGeneration_Cellular,
             .iPadPro_10_5_Inch_Cellular,
             .iPad_6thGeneration_Cellular,
             .iPad_Mini_CDMA,
             .iPad_Mini_MM,
             .iPad_Mini_2_GSM,
             .iPad_Mini_2_TD_LTE,
             .iPad_Mini_3_GSM,
             .iPad_Mini_3_China,
             .iPad_Mini_4_GSM:
            return true
        case .iPhone4s,
             .iPhone5,
             .iPhone5_2,
             .iPhone5c_NorthAmerica_Japan,
             .iPhone5c_Europe_Asia,
             .iPhone5s_NorthAmerica_Japan,
             .iPhone5s_Europe_Asia,
             .iPhone6,
             .iPhone6Plus,
             .iPhone6s,
             .iPhone6sPlus,
             .iPhoneSE,
             .iPhone7_CDMA,
             .iPhone7_Global,
             .iPhone7Plus_CDMA,
             .iPhone7Plus_Global,
             .iPhone8,
             .iPhone8_2,
             .iPhone8Plus,
             .iPhone8Plus_2,
             .iPhoneX,
             .iPhoneX_2:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the model has Celluar capabilities.

     - warning:
     Do **not** rely on this flag to execute code that requires a cellular network to be present.

     This flag is only here because some devices' names encode the presence of a cellular module and we thought it'd be useful to translate that into a boolean. That's all.
     */
    public var hasCellular: Bool {
        switch self {
        case .appleWatchSeries3_38mm_GPS_Cellular,
             .appleWatchSeries3_42mm_GPS_Cellular:
            return true
        case .iPad_2_GSM,
             .iPad_2_CDMA,
             .iPad_3rdGeneration_Verizon,
             .iPad_3rdGeneration_GSM,
             .iPad_4thGeneration_CDMA,
             .iPad_4thGeneration_MM,
             .iPadAir_GSM,
             .iPadAir_TD_LTE,
             .iPadAir_2_Cellular,
             .iPadPro_12_9_Inch_Cellular,
             .iPadPro_9_7_Inch_Cellular,
             .iPad_5thGeneration_Cellular,
             .iPadPro_12_9_Inch_2ndGeneration_Cellular,
             .iPadPro_10_5_Inch_Cellular,
             .iPad_6thGeneration_Cellular,
             .iPad_Mini_CDMA,
             .iPad_Mini_MM,
             .iPad_Mini_2_GSM,
             .iPad_Mini_2_TD_LTE,
             .iPad_Mini_3_GSM,
             .iPad_Mini_3_China,
             .iPad_Mini_4_GSM:
            return true
        case .iPhone4s,
             .iPhone5,
             .iPhone5_2,
             .iPhone5c_NorthAmerica_Japan,
             .iPhone5c_Europe_Asia,
             .iPhone5s_NorthAmerica_Japan,
             .iPhone5s_Europe_Asia,
             .iPhone6,
             .iPhone6Plus,
             .iPhone6s,
             .iPhone6sPlus,
             .iPhoneSE,
             .iPhone7_CDMA,
             .iPhone7_Global,
             .iPhone7Plus_CDMA,
             .iPhone7Plus_Global,
             .iPhone8,
             .iPhone8_2,
             .iPhone8Plus,
             .iPhone8Plus_2,
             .iPhoneX,
             .iPhoneX_2:
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
     Returns the year the model has been first released in.
     */
    public static let year: Int = {
        return Defines.Device.currentModel.year
    }()

    /**
     Returns true if the model has GPS capabilities.

     - warning:
     Do **not** rely on this flag to execute code that requires the GPS to be present. Use `CoreLocation` to do that.

     This flag is only here because some devices' names encode the presence of a GPS and we thought it'd be useful to translate that into a boolean. That's all.
     */
    public static let hasGPS: Bool = {
        return Defines.Device.currentModel.hasGPS
    }()

    /**
     Returns true if the model has Celluar capabilities.

     - warning:
     Do **not** rely on this flag to execute code that requires a cellular network to be present.

     This flag is only here because some devices' names encode the presence of a cellular module and we thought it'd be useful to translate that into a boolean. That's all.
     */
    public static let hasCellular: Bool = {
        return Defines.Device.currentModel.hasCellular
    }()
}
