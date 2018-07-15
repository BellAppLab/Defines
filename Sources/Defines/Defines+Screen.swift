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


public extension Defines.Device.Model
{
    public var noScreen: Bool {
        switch self {
        case .airPods,
             .homePod_1,
             .homePod_2,
             .macMini_2009,
             .macMini_2010,
             .macMini_2011,
             .macMini_2011_2,
             .macMini_2012,
             .macMini_2012_2,
             .macMini_2014,
             .macPro_2009,
             .macPro_2010,
             .macPro_2013:
            return true
        default:
            return false
        }
    }

    public var is_38_mm: Bool {
        switch self {
        case .appleWatch_1stGeneration_38mm,
             .appleWatchSeries1_38mm,
             .appleWatchSeries2_38mm,
             .appleWatchSeries3_38mm_GPS_Cellular,
             .appleWatchSeries3_38mm_GPS:
            return true
        default:
            return false
        }
    }

    public var is_42_mm: Bool {
        switch self {
        case .appleWatch_1stGeneration_42mm,
             .appleWatchSeries1_42mm,
             .appleWatchSeries2_42mm,
             .appleWatchSeries3_42mm_GPS_Cellular,
             .appleWatchSeries3_42mm_GPS:
            return true
        default:
            return false
        }
    }

    public var is_3_5_Inch: Bool {
        switch self {
        case .iPhone4s:
            return true
        default:
            return false
        }
    }

    public var is_4_Inch: Bool {
        if isiPhoneC {
            return true
        }
        if isiPhoneSE {
            return true
        }
        if isiPodTouch {
            return true
        }
        switch self {
        case .iPhone5,
             .iPhone5_2,
             .iPhone5s_NorthAmerica_Japan,
             .iPhone5s_Europe_Asia:
            return true
        default:
            return false
        }
    }

    public var is_4_7_Inch: Bool {
        switch self {
        case .iPhone6,
             .iPhone6s,
             .iPhone7_CDMA,
             .iPhone7_Global,
             .iPhone8,
             .iPhone8_2:
            return true
        default:
            return false
        }
    }

    public var is_5_5_Inch: Bool {
        return isiPhonePlus
    }

    public var is_5_8_Inch: Bool {
        return isiPhoneX
    }

    public var is_7_9_Inch: Bool {
        return isiPadMini
    }

    public var is_9_7_Inch: Bool {
        return isiPadRegular
    }

    public var is_10_5_Inch: Bool {
        switch self {
        case .iPadPro_10_5_Inch,
             .iPadPro_10_5_Inch_Cellular:
            return true
        default:
            return false
        }
    }

    public var is_11_Inch: Bool {
        switch self {
        case .macBookAir_11_Inch_2010,
             .macBookAir_11_Inch_2011,
             .macBookAir_11_Inch_2012,
             .macBookAir_11_Inch_2013,
             .macBookAir_11_Inch_2015:
            return true
        default:
            return false
        }
    }

    public var is_12_Inch: Bool {
        switch self {
        case .macBook_2015,
             .macBook_2016,
             .macBook_2017:
            return true
        default:
            return false
        }
    }

    public var is_12_9_Inch: Bool {
        switch self {
        case .iPadPro_12_9_Inch,
             .iPadPro_12_9_Inch_Cellular,
             .iPadPro_12_9_Inch_2ndGeneration,
             .iPadPro_12_9_Inch_2ndGeneration_Cellular:
            return true
        default:
            return false
        }
    }

    public var is_13_Inch: Bool {
        switch self {
        case .macBookAir_2009,
             .macBookAir_13_Inch_2010,
             .macBookAir_13_Inch_2011,
             .macBookAir_13_Inch_2012,
             .macBookAir_13_Inch_2013,
             .macBookAir_13_Inch_2015,
             .macBook_Early_2009,
             .macBook_Late_2009,
             .macBook_2010,
             .macBookPro_13_Inch_2009,
             .macBookPro_13_Inch_2010,
             .macBookPro_13_Inch_2011,
             .macBookPro_13_Inch_2012,
             .macBookPro_13_Inch_Retina_2012,
             .macBookPro_13_Inch_2013,
             .macBookPro_13_Inch_2015,
             .macBookPro_13_Inch_2_Thunderbolt_2016,
             .macBookPro_13_Inch_4_Thunderbolt_2016,
             .macBookPro_13_Inch_2_Thunderbolt_2017,
             .macBookPro_13_Inch_4_Thunderbolt_2017,
             .macBookPro_13_Inch_2018:
            return true
        default:
            return false
        }
    }

    public var is_15_Inch: Bool {
        switch self {
        case .macBookPro_Late_2008,
             .macBookPro_15_Inch_2009,
             .macBookPro_15_Inch_2010,
             .macBookPro_15_Inch_2011,
             .macBookPro_15_Inch_2012,
             .macBookPro_15_Inch_Retina_2012,
             .macBookPro_15_Inch_2013,
             .macBookPro_15_Inch_2013_2,
             .macBookPro_15_Inch_2015,
             .macBookPro_15_Inch_2015_2,
             .macBookPro_15_Inch_2016,
             .macBookPro_15_Inch_2017,
             .macBookPro_15_Inch_2018:
            return true
        default:
            return false
        }
    }

    public var is_17_Inch: Bool {
        switch self {
        case .macBookPro_17_Inch_2009,
             .macBookPro_17_Inch_2010,
             .macBookPro_17_Inch_2011:
            return true
        default:
            return false
        }
    }

    public var is_21_5_Inch: Bool {
        switch self {
        case .iMac_21_5_Inch_2010,
             .iMac_21_5_Inch_2011,
             .iMac_21_5_Inch_2012,
             .iMac_21_5_Inch_2013,
             .iMac_21_5_Inch_2014,
             .iMac_21_5_Inch_2015,
             .iMac_21_5_4K_Inch_2015,
             .iMac_21_5_Inch_2017,
             .iMac_21_5_4K_Inch_2017:
            return true
        default:
            return false
        }
    }

    public var is_27_Inch: Bool {
        switch self {
        case .iMac_27_Inch_2010,
             .iMac_27_Inch_2011,
             .iMac_27_Inch_2012,
             .iMac_27_Inch_2013,
             .iMac_27_Inch_5K_2014,
             .iMac_27_Inch_5K_2015,
             .iMac_27_Inch_5K_2017:
            return true
        default:
            return false
        }
    }

    public var is_4K: Bool {
        switch self {
        case .appleTV_4K,
             .iMac_21_5_4K_Inch_2015,
             .iMac_21_5_4K_Inch_2017:
            return true
        default:
            return false
        }
    }

    public var is_5K: Bool {
        switch self {
        case .iMac_27_Inch_5K_2014,
             .iMac_27_Inch_5K_2015,
             .iMac_27_Inch_5K_2017:
            return true
        default:
            return false
        }
    }

    public var undefinedScreen: Bool {
        switch self {
        case .appleTV_2ndGeneration,
             .appleTV_3rdGeneration_1,
             .appleTV_3rdGeneration_2,
             .appleTV_4thGeneration,
             .appleTV_4K,
             .macBookPro_Early_2008,
             .iMac_Early_2009,
             .iMac_Late_2009:
            return true
        default:
            return false
        }
    }
}


public extension Defines.Screen
{
    public static let bounds: CGRect = {
        #if os(iOS) || os(tvOS)
        return UIScreen.main.bounds
        #endif
        #if os(watchOS)
        return WKInterfaceDevice.current().screenBounds
        #endif
        #if os(macOS)
        #if swift(>=4.0)
        return NSScreen.main?.frame ?? NSRect.zero
        #else
        return NSScreen.main()?.frame ?? NSRect.zero
        #endif
        #endif
    }()

    /// The main screen's bounds' maxX (aka `UIScreen.main.bounds.maxX`).
    public static let currentWidth: CGFloat = {
        return Defines.Screen.bounds.maxX
    }()

    /// The main screen's bounds' maxY (aka `UIScreen.main.bounds.maxY`).
    public static let currentHeight: CGFloat = {
        return Defines.Screen.bounds.maxY
    }()

    /// The main screen's bounds' maximum between width and height (aka `max(UIScreen.width, UIScreen.height)`).
    public static let maxLength: CGFloat = {
        return max(Defines.Screen.currentWidth, Defines.Screen.currentHeight)
    }()

    /// The main screen's bounds' minimum between width and height (aka `min(UIScreen.width, UIScreen.height)`).
    public static let minLength: CGFloat = {
        return min(Defines.Screen.currentWidth, Defines.Screen.currentHeight)
    }()

    public static let scale: CGFloat = {
        #if os(iOS) || os(tvOS)
        return UIScreen.main.scale
        #endif
        #if os(watchOS)
        return WKInterfaceDevice.current().screenScale
        #endif
        #if os(macOS)
        #if swift(>=4.0)
        return NSScreen.main?.backingScaleFactor ?? 1.0
        #else
        return NSScreen.main()?.backingScaleFactor ?? 1.0
        #endif
        #endif
    }()

    /// The main screen's scale (aka `UIScreen.main.scale > 1`).
    public static let isRetina: Bool = {
        return Defines.Screen.scale > 1
    }()

    /// If the device is an iPhone and it's scaled up, this returns `true`.
    public static let isScaledUp: Bool = {
        #if os(iOS)
        guard Defines.Device.isiPhone else { return false }
        return (Defines.Device.isiPhonePlus || Defines.Device.isiPhoneX) && UIScreen.main.nativeScale > UIScreen.main.scale
        #else
        return false
        #endif
    }()

    public static let noScreen: Bool = {
        return Defines.Device.model.noScreen
    }()

    public static let is_38_mm: Bool = {
        return Defines.Device.model.is_38_mm
    }()

    public static let is_42_mm: Bool = {
        return Defines.Device.model.is_42_mm
    }()

    public static let is_3_5_Inch: Bool = {
        return Defines.Device.model.is_3_5_Inch
    }()

    public static let is_4_Inch: Bool = {
        return Defines.Device.model.is_4_Inch
    }()

    public static let is_4_7_Inch: Bool = {
        return Defines.Device.model.is_4_7_Inch
    }()

    public static let is_5_5_Inch: Bool = {
        return Defines.Device.model.is_5_5_Inch
    }()

    public static let is_5_8_Inch: Bool = {
        return Defines.Device.model.is_5_8_Inch
    }()

    public static let is_7_9_Inch: Bool = {
        return Defines.Device.model.is_7_9_Inch
    }()

    public static let is_9_7_Inch: Bool = {
        return Defines.Device.model.is_9_7_Inch
    }()

    public static let is_10_5_Inch: Bool = {
        return Defines.Device.model.is_10_5_Inch
    }()

    public static let is_11_Inch: Bool = {
        return Defines.Device.model.is_11_Inch
    }()

    public static let is_12_Inch: Bool = {
        return Defines.Device.model.is_12_Inch
    }()

    public static let is_12_9_Inch: Bool = {
        return Defines.Device.model.is_12_9_Inch
    }()

    public static let is_13_Inch: Bool = {
        return Defines.Device.model.is_13_Inch
    }()

    public static let is_15_Inch: Bool = {
        return Defines.Device.model.is_15_Inch
    }()

    public static let is_17_Inch: Bool = {
        return Defines.Device.model.is_17_Inch
    }()

    public static let is_21_5_Inch: Bool = {
        return Defines.Device.model.is_21_5_Inch
    }()

    public static let is_27_Inch: Bool = {
        return Defines.Device.model.is_27_Inch
    }()

    public static let is_4K: Bool = {
        return Defines.Device.model.is_4K
    }()

    public static let is_5K: Bool = {
        return Defines.Device.model.is_5K
    }()

    public static let undefinedScreen: Bool = {
        return Defines.Device.model.undefinedScreen
    }()
}
