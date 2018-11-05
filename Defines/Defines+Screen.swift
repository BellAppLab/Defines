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


//MARK: - Instance Variables
public extension Defines.Device.Model
{
    /**
     Returns true if the device doesn't have a screen (eg. AirPods and HomePods).
     */
    public var noScreen: Bool {
        switch self {
        case .airPods,
             .homePod_1,
             .homePod_2:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the device has a 38mm screen (eg. Watch 38mm).
     */
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

    /**
     Returns true if the device has a 40mm screen (eg. Watch 40mm).
     */
    public var is_40_mm: Bool {
        switch self {
        case .appleWatchSeries4_40mm_GPS,
             .appleWatchSeries4_40mm_GPS_Cellular:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the device has a 42mm screen (eg. Watch 42mm).
     */
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

    /**
     Returns true if the device has a 44mm screen (eg. Watch 44mm).
     */
    public var is_44_mm: Bool {
        switch self {
        case .appleWatchSeries4_44mm_GPS,
             .appleWatchSeries4_44mm_GPS_Cellular:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the device has a 3.5" screen (eg. iPhone 4s).
     */
    public var is_3_5_Inch: Bool {
        switch self {
        case .iPhone4s:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the device has a 4" screen (eg. iPhone 5c, iPhone 5, iPhone 5s, iPhone SE and iPod touch).
     */
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

    /**
     Returns true if the device has a 4.7" screen (eg. iPhone 6, iPhone 6s, iPhone 7 and iPhone 8).
     */
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

    /**
     Returns true if the device has a 5.5" screen (eg. iPhone Plus).
     */
    public var is_5_5_Inch: Bool {
        return isiPhonePlus
    }

    /**
     Returns true if the device has a 5.8" screen (eg. iPhone X).
     */
    public var is_5_8_Inch: Bool {
        switch self {
        case .iPhoneX,
             .iPhoneX_2,
             .iPhoneXS:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the device has a 6.1" screen (eg. iPhone XR).
     */
    public var is_6_1_Inch: Bool {
        switch self {
        case .iPhoneXR:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the device has a 6.5" screen (eg. iPhone XS Max).
     */
    public var is_6_5_Inch: Bool {
        switch self {
        case .iPhoneXS_Max,
             .iPhoneXS_Max_China:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the device has a 7.9" screen (eg. iPad mini).
     */
    public var is_7_9_Inch: Bool {
        return isiPadMini
    }

    /**
     Returns true if the device has a 9.7" screen (eg. regular iPad).
     */
    public var is_9_7_Inch: Bool {
        return isiPadRegular
    }

    /**
     Returns true if the device has a 10.5" screen (eg. iPad Pro).
     */
    public var is_10_5_Inch: Bool {
        switch self {
        case .iPadPro_10_5_Inch,
             .iPadPro_10_5_Inch_Cellular:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the device has an 11" screen (eg. MacBook air).
     */
    public var is_11_Inch: Bool {
        switch self {
        case .macBookAir_11_Inch_2010,
             .macBookAir_11_Inch_2011,
             .macBookAir_11_Inch_2012,
             .macBookAir_11_Inch_2013,
             .macBookAir_11_Inch_2015,
             .iPadPro_11_Inch,
             .iPadPro_11_Inch_1TB,
             .iPadPro_11_Inch_Cellular,
             .iPadPro_11_Inch_1TB_Cellular:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the device has a 12" screen (eg. MacBook).
     */
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

    /**
     Returns true if the device has a 12.9" screen (eg. iPad Pro).
     */
    public var is_12_9_Inch: Bool {
        switch self {
        case .iPadPro_12_9_Inch,
             .iPadPro_12_9_Inch_Cellular,
             .iPadPro_12_9_Inch_2ndGeneration,
             .iPadPro_12_9_Inch_2ndGeneration_Cellular,
             .iPadPro_12_9_Inch_3rdGeneration,
             .iPadPro_12_9_Inch_3rdGeneration_1TB,
             .iPadPro_12_9_Inch_3rdGeneration_Cellular,
             .iPadPro_12_9_Inch_3rdGeneration_1TB_Cellular:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the device has a 13" screen (eg. MacBook air, MacBook, MacBook Pro).
     */
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

    /**
     Returns true if the device has a 15" screen (eg. MacBook Pro).
     */
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

    /**
     Returns true if the device has a 17" screen (eg. MacBook Pro).
     */
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

    /**
     Returns true if the device has a 21.5" screen (eg. iMac).
     */
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

    /**
     Returns true if the device has a 27" screen (eg. iMac).
     */
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

    /**
     Returns true if the device supports 4K screens (eg. TV and iMac).
     */
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

    /**
     Returns true if the device supports 5K screens (eg. iMac).
     */
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

    /**
     Returns true if the device doesn't have a typical screen size (eg. TV, Mac Mini and Mac Pro).

     - note:
        It is not possible to determine the screen size of the MacBook Pro (Early 2008), the iMac (Early 2009) and the iMac (Late 2009), since the same model identifier is used for multiple devices.

     ## See Also
     - `Defines.Screen`
     */
    public var undefinedScreen: Bool {
        switch self {
        case .appleTV_2ndGeneration,
             .appleTV_3rdGeneration,
             .appleTV_3rdGeneration_2,
             .appleTV_4thGeneration,
             .appleTV_4K,
             .macBookPro_Early_2008,
             .macMini_2009,
             .macMini_2010,
             .macMini_2011,
             .macMini_2011_2,
             .macMini_2012,
             .macMini_2012_2,
             .macMini_2014,
             .iMac_Early_2009,
             .iMac_Late_2009,
             .macPro_2009,
             .macPro_2010,
             .macPro_2013:
            return true
        default:
            return false
        }
    }
}


//MARK: - Static Variables
public extension Defines.Screen
{
    #if os(iOS) || os(tvOS) || os(watchOS)
    public typealias Rect = CGRect
    #endif
    #if os(macOS)
    public typealias Rect = NSRect
    #endif

    /// The main screen's current bounds.
    public static let bounds: Rect = {
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

    /// The main screen's scale factor (aka `UIScreen.main.scale`)
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

    /**
     Returns true if the device doesn't have a screen (eg. AirPods and HomePods).
     */
    public static let noScreen: Bool = {
        return Defines.Device.currentModel.noScreen
    }()

    /**
     Returns true if the device has a 38mm screen (eg. Watch 38mm).
     */
    public static let is_38_mm: Bool = {
        return Defines.Device.currentModel.is_38_mm
    }()

    /**
     Returns true if the device has a 42mm screen (eg. Watch 42mm).
     */
    public static let is_42_mm: Bool = {
        return Defines.Device.currentModel.is_42_mm
    }()

    /**
     Returns true if the device has a 3.5" screen (eg. iPhone 4s).
     */
    public static let is_3_5_Inch: Bool = {
        return Defines.Device.currentModel.is_3_5_Inch
    }()

    /**
     Returns true if the device has a 4" screen (eg. iPhone 5c, iPhone 5, iPhone 5s, iPhone SE and iPod touch).
     */
    public static let is_4_Inch: Bool = {
        return Defines.Device.currentModel.is_4_Inch
    }()

    /**
     Returns true if the device has a 4.7" screen (eg. iPhone 6, iPhone 6s, iPhone 7 and iPhone 8).
     */
    public static let is_4_7_Inch: Bool = {
        return Defines.Device.currentModel.is_4_7_Inch
    }()

    /**
     Returns true if the device has a 5.5" screen (eg. iPhone Plus).
     */
    public static let is_5_5_Inch: Bool = {
        return Defines.Device.currentModel.is_5_5_Inch
    }()

    /**
     Returns true if the device has a 5.8" screen (eg. iPhone X).
     */
    public static let is_5_8_Inch: Bool = {
        return Defines.Device.currentModel.is_5_8_Inch
    }()

    /**
     Returns true if the device has a 7.9" screen (eg. iPad mini).
     */
    public static let is_7_9_Inch: Bool = {
        return Defines.Device.currentModel.is_7_9_Inch
    }()

    /**
     Returns true if the device has a 9.7" screen (eg. regular iPad).
     */
    public static let is_9_7_Inch: Bool = {
        return Defines.Device.currentModel.is_9_7_Inch
    }()

    /**
     Returns true if the device has a 10.5" screen (eg. iPad Pro).
     */
    public static let is_10_5_Inch: Bool = {
        return Defines.Device.currentModel.is_10_5_Inch
    }()

    /**
     Returns true if the device has an 11" screen (eg. MacBook air).
     */
    public static let is_11_Inch: Bool = {
        return Defines.Device.currentModel.is_11_Inch
    }()

    /**
     Returns true if the device has a 12" screen (eg. MacBook).
     */
    public static let is_12_Inch: Bool = {
        return Defines.Device.currentModel.is_12_Inch
    }()

    /**
     Returns true if the device has a 12.9" screen (eg. iPad Pro).
     */
    public static let is_12_9_Inch: Bool = {
        return Defines.Device.currentModel.is_12_9_Inch
    }()

    /**
     Returns true if the device has a 13" screen (eg. MacBook air, MacBook, MacBook Pro).
     */
    public static let is_13_Inch: Bool = {
        return Defines.Device.currentModel.is_13_Inch
    }()

    /**
     Returns true if the device has a 15" screen (eg. MacBook Pro).
     */
    public static let is_15_Inch: Bool = {
        return Defines.Device.currentModel.is_15_Inch
    }()

    /**
     Returns true if the device has a 17" screen (eg. MacBook Pro).
     */
    public static let is_17_Inch: Bool = {
        return Defines.Device.currentModel.is_17_Inch
    }()

    /**
     Returns true if the device has a 21.5" screen (eg. iMac).
     */
    public static let is_21_5_Inch: Bool = {
        return Defines.Device.currentModel.is_21_5_Inch
    }()

    /**
     Returns true if the device has a 27" screen (eg. iMac).
     */
    public static let is_27_Inch: Bool = {
        return Defines.Device.currentModel.is_27_Inch
    }()

    /**
     Returns true if the device supports 4K screens (eg. TV and iMac).
     */
    public static let is_4K: Bool = {
        return Defines.Device.currentModel.is_4K
    }()

    /**
     Returns true if the device supports 5K screens (eg. iMac).
     */
    public static let is_5K: Bool = {
        return Defines.Device.currentModel.is_5K
    }()

    /**
     Returns true if the device doesn't have a typical screen size (eg. TV, Mac Mini and Mac Pro).

     - note:
     It is not possible to determine the screen size of the MacBook Pro (Early 2008), the iMac (Early 2009) and the iMac (Late 2009), since the same model identifier is used for multiple devices.

     ## See Also
     - `Defines.Screen`
     */
    public static let undefinedScreen: Bool = {
        return Defines.Device.currentModel.undefinedScreen
    }()
}
