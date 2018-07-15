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

// Main Source: https://en.wikipedia.org/wiki/List_of_iOS_devices

import Foundation


public struct Defines
{
    public struct Device
    {
        /// Source: https://www.theiphonewiki.com/wiki/Models
        public enum Model: String
        {
            case unknown = ""
            
            case airPods = "AirPods1,1"

            case appleTV_2ndGeneration = "AppleTV2,1"
            case appleTV_3rdGeneration_1 = "AppleTV3,1"
            case appleTV_3rdGeneration_2 = "AppleTV3,2"
            case appleTV_4thGeneration = "AppleTV5,3"
            case appleTV_4K = "AppleTV6,2"

            //Additional info: https://support.apple.com/en-us/HT204507#link2
            case appleWatch_1stGeneration_38mm = "Watch1,1"
            case appleWatch_1stGeneration_42mm = "Watch1,2"
            case appleWatchSeries1_38mm = "Watch2,6"
            case appleWatchSeries1_42mm = "Watch2,7"
            case appleWatchSeries2_38mm = "Watch2,3"
            case appleWatchSeries2_42mm = "Watch2,4"
            case appleWatchSeries3_38mm_GPS_Cellular = "Watch3,1"
            case appleWatchSeries3_42mm_GPS_Cellular = "Watch3,2"
            case appleWatchSeries3_38mm_GPS = "Watch3,3"
            case appleWatchSeries3_42mm_GPS = "Watch3,4"

            case homePod_1 = "AudioAccessory1,1"
            case homePod_2 = "AudioAccessory1,2"

            //Additional info: https://support.apple.com/en-us/HT201471#ipad
            case iPad_2 = "iPad2,1"
            case iPad_2_GSM = "iPad2,2"
            case iPad_2_CDMA = "iPad2,3"
            case iPad_2_2 = "iPad2,4"
            case iPad_3rdGeneration = "iPad3,1"
            case iPad_3rdGeneration_Verizon = "iPad3,2"
            case iPad_3rdGeneration_GSM = "iPad3,3"
            case iPad_4thGeneration = "iPad3,4"
            case iPad_4thGeneration_CDMA = "iPad3,5"
            case iPad_4thGeneration_MM = "iPad3,6" //https://apple.stackexchange.com/a/101066
            case iPadAir = "iPad4,1"
            case iPadAir_GSM = "iPad4,2"
            case iPadAir_TD_LTE = "iPad4,3"
            case iPadAir_2 = "iPad5,3"
            case iPadAir_2_Cellular = "iPad5,4"
            case iPadPro_12_9_Inch = "iPad6,7"
            case iPadPro_12_9_Inch_Cellular = "iPad6,8"
            case iPadPro_9_7_Inch = "iPad6,3"
            case iPadPro_9_7_Inch_Cellular = "iPad6,4"
            case iPad_5thGeneration = "iPad6,11"
            case iPad_5thGeneration_Cellular = "iPad6,12"
            case iPadPro_12_9_Inch_2ndGeneration = "iPad7,1"
            case iPadPro_12_9_Inch_2ndGeneration_Cellular = "iPad7,2"
            case iPadPro_10_5_Inch = "iPad7,3"
            case iPadPro_10_5_Inch_Cellular = "iPad7,4"
            case iPad_6thGeneration = "iPad7,5"
            case iPad_6thGeneration_Cellular = "iPad7,6"
            case iPad_Mini = "iPad2,5"
            case iPad_Mini_CDMA = "iPad2,6"
            case iPad_Mini_MM = "iPad2,7" //https://apple.stackexchange.com/a/101066
            case iPad_Mini_2 = "iPad4,4"
            case iPad_Mini_2_GSM = "iPad4,5"
            case iPad_Mini_2_TD_LTE = "iPad4,6"
            case iPad_Mini_3 = "iPad4,7"
            case iPad_Mini_3_GSM = "iPad4,8"
            case iPad_Mini_3_China = "iPad4,9"
            case iPad_Mini_4 = "iPad5,1"
            case iPad_Mini_4_GSM = "iPad5,2"

            //Additional info: https://support.apple.com/en-us/HT201296
            case iPhone4s = "iPhone4,1"
            case iPhone5 = "iPhone5,1"
            case iPhone5_2 = "iPhone5,2"
            case iPhone5c_NorthAmerica_Japan = "iPhone5,3"
            case iPhone5c_Europe_Asia = "iPhone5,4"
            case iPhone5s_NorthAmerica_Japan = "iPhone6,1"
            case iPhone5s_Europe_Asia = "iPhone6,2"
            case iPhone6 = "iPhone7,2"
            case iPhone6Plus = "iPhone7,1"
            case iPhone6s = "iPhone8,1"
            case iPhone6sPlus = "iPhone8,2"
            case iPhoneSE = "iPhone8,4"
            case iPhone7_CDMA = "iPhone9,1"
            case iPhone7_Global = "iPhone9,3"
            case iPhone7Plus_CDMA = "iPhone9,2"
            case iPhone7Plus_Global = "iPhone9,4"
            case iPhone8 = "iPhone10,1"
            case iPhone8_2 = "iPhone10,4"
            case iPhone8Plus = "iPhone10,2"
            case iPhone8Plus_2 = "iPhone10,5"
            case iPhoneX = "iPhone10,3"
            case iPhoneX_2 = "iPhone10,6"

            //Additional info: https://support.apple.com/en-us/HT204217#ipodtouch
            case iPodTouch_5thGeneration = "iPod5,1"
            case iPodTouch_6thGeneration = "iPod7,1"

            //Additional info: https://support.apple.com/en-us/HT201862
            case macBookAir_2009 = "MacBookAir2,1"
            case macBookAir_11_Inch_2010 = "MacBookAir3,1"
            case macBookAir_13_Inch_2010 = "MacBookAir3,2"
            case macBookAir_11_Inch_2011 = "MacBookAir4,1"
            case macBookAir_13_Inch_2011 = "MacBookAir4,2"
            case macBookAir_11_Inch_2012 = "MacBookAir5,1"
            case macBookAir_13_Inch_2012 = "MacBookAir5,2"
            case macBookAir_11_Inch_2013 = "MacBookAir6,1"
            case macBookAir_13_Inch_2013 = "MacBookAir6,2"
            case macBookAir_11_Inch_2015 = "MacBookAir7,1"
            case macBookAir_13_Inch_2015 = "MacBookAir7,2"

            //Additional info: https://support.apple.com/en-us/HT201608
            case macBook_Early_2009 = "MacBook5,2"
            case macBook_Late_2009 = "MacBook6,1"
            case macBook_2010 = "MacBook7,1"
            case macBook_2015 = "MacBook8,1"
            case macBook_2016 = "MacBook9,1"
            case macBook_2017 = "MacBook10,1"

            //Additional info: https://support.apple.com/en-us/HT201300
            case macBookPro_Early_2008 = "MacBookPro4,1"
            case macBookPro_Late_2008 = "MacBookPro5,1"
            case macBookPro_13_Inch_2009 = "MacBookPro5,5"
            case macBookPro_15_Inch_2009 = "MacBookPro5,3"
            case macBookPro_17_Inch_2009 = "MacBookPro5,2"
            case macBookPro_13_Inch_2010 = "MacBookPro7,1"
            case macBookPro_15_Inch_2010 = "MacBookPro6,2"
            case macBookPro_17_Inch_2010 = "MacBookPro6,1"
            case macBookPro_13_Inch_2011 = "MacBookPro8,1"
            case macBookPro_15_Inch_2011 = "MacBookPro8,2"
            case macBookPro_17_Inch_2011 = "MacBookPro8,3"
            case macBookPro_13_Inch_2012 = "MacBookPro9,2"
            case macBookPro_13_Inch_Retina_2012 = "MacBookPro10,2"
            case macBookPro_15_Inch_2012 = "MacBookPro9,1"
            case macBookPro_15_Inch_Retina_2012 = "MacBookPro10,1"
            case macBookPro_13_Inch_2013 = "MacBookPro11,1"
            case macBookPro_15_Inch_2013 = "MacBookPro11,2"
            case macBookPro_15_Inch_2013_2 = "MacBookPro11,3"
            case macBookPro_13_Inch_2015 = "MacBookPro12,1"
            case macBookPro_15_Inch_2015 = "MacBookPro11,4"
            case macBookPro_15_Inch_2015_2 = "MacBookPro11,5"
            case macBookPro_13_Inch_2_Thunderbolt_2016 = "MacBookPro13,1"
            case macBookPro_13_Inch_4_Thunderbolt_2016 = "MacBookPro13,2"
            case macBookPro_15_Inch_2016 = "MacBookPro13,3"
            case macBookPro_13_Inch_2_Thunderbolt_2017 = "MacBookPro14,1"
            case macBookPro_13_Inch_4_Thunderbolt_2017 = "MacBookPro14,2"
            case macBookPro_15_Inch_2017 = "MacBookPro14,3"
            case macBookPro_13_Inch_2018 = "MacBookPro15,2"
            case macBookPro_15_Inch_2018 = "MacBookPro15,1"

            //Additional info: https://support.apple.com/en-us/HT201894
            case macMini_2009 = "Macmini3,1"
            case macMini_2010 = "Macmini4,1"
            case macMini_2011 = "Macmini5,1"
            case macMini_2011_2 = "Macmini5,2"
            case macMini_2012 = "Macmini6,1"
            case macMini_2012_2 = "Macmini6,2"
            case macMini_2014 = "Macmini7,1"

            //Additional info: https://support.apple.com/en-us/HT201634
            case iMac_Early_2009 = "iMac9,1"
            case iMac_Late_2009 = "iMac10,1"
            case iMac_21_5_Inch_2010 = "iMac11,2"
            case iMac_27_Inch_2010 = "iMac11,3"
            case iMac_21_5_Inch_2011 = "iMac12,1"
            case iMac_27_Inch_2011 = "iMac12,2"
            case iMac_21_5_Inch_2012 = "iMac13,1"
            case iMac_27_Inch_2012 = "iMac13,2"
            case iMac_21_5_Inch_2013 = "iMac14,1"
            case iMac_27_Inch_2013 = "iMac14,2"
            case iMac_21_5_Inch_2014 = "iMac14,4"
            case iMac_27_Inch_5K_2014 = "iMac15,1"
            case iMac_21_5_Inch_2015 = "iMac16,1"
            case iMac_21_5_4K_Inch_2015 = "iMac16,2"
            case iMac_27_Inch_5K_2015 = "iMac17,1"
            case iMac_21_5_Inch_2017 = "iMac18,1"
            case iMac_21_5_4K_Inch_2017 = "iMac18,2"
            case iMac_27_Inch_5K_2017 = "iMac18,3"

            //Additional info: https://support.apple.com/en-us/HT202888
            case macPro_2009 = "MacPro4,1"
            case macPro_2010 = "MacPro5,1"
            case macPro_2013 = "MacPro6,1"
        }
    }
    
    public struct Screen {}
    public struct OS {}
    public struct App {}

    public struct Version: Equatable, Comparable, CustomStringConvertible {
        public let major: Int
        public let minor: Int
        public let patch: Int
        public let build: String

        public init(major: Int = 0,
                    minor: Int = 0,
                    patch: Int = 0,
                    build: String = "")
        {
            if major < 0 {
                self.major = 0
            } else {
                self.major = major
            }
            if minor < 0 {
                self.minor = 0
            } else {
                self.minor = minor
            }
            if patch < 0 {
                self.patch = 0
            } else {
                self.patch = patch
            }
            self.build = build
        }
    }
}
