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
/**
 The main point of interaction with `Defines`. All the flags in this module are namespaced under the `Defines` struct to avoid collisions.

 Structure:

 ```
 Defines.Device
 Defines.Device.Model
 Defines.Screen
 Defines.OS
 Defines.App
 Defines.Version
 ```

 ## See Also
 - [List of iOS Devices](https://en.wikipedia.org/wiki/List_of_iOS_devices)
 */
public struct Defines
{
    //MARK: - Device
    public struct Device
    {
        //MARK: - Model
        /**
         An enumeration of model identifiers for all the relevant Apple products since 2008.

         Roughly speaking, these devices have been listed according to their ability to run the minimum OS versions supported by `Defines`.

         ## See Also
         - [Models - The iPhone Wiki](https://www.theiphonewiki.com/wiki/Models)
         - [Watch](https://support.apple.com/en-us/HT204507#link2)
         - [iPad](https://support.apple.com/en-us/HT201471#ipad)
         - [iPhone](https://support.apple.com/en-us/HT201296)
         - [iPod Touch](https://support.apple.com/en-us/HT204217#ipodtouch)
         - [MacBook air](https://support.apple.com/en-us/HT201862)
         - [MacBook](https://support.apple.com/en-us/HT201608)
         - [MacBook Pro](https://support.apple.com/en-us/HT201300)
         - [Mac mini](https://support.apple.com/en-us/HT201894)
         - [iMac](https://support.apple.com/en-us/HT201634)
         - [Mac Pro](https://support.apple.com/en-us/HT202888)
         - [What does 'MM' mean?](//https://apple.stackexchange.com/a/101066)
         */
        public enum Model: String
        {
            //MARK: Default
            /// If `Defines.Device.Model` cannot find the current device's model, this is the enum case it returns.
            case unknown = ""

            //MARK: AirPods
            /// AirPods model identifier.
            case airPods = "AirPods1,1"

            //MARK: - Apple TV
            /// TV (2nd Generation) model identifier.
            case appleTV_2ndGeneration = "AppleTV2,1"
            /// TV (3rd Generation) model identifier.
            case appleTV_3rdGeneration = "AppleTV3,1"
            /// TV (3rd Generation - revision 2) model identifier.
            case appleTV_3rdGeneration_2 = "AppleTV3,2"
            /// TV (4th Generation) model identifier.
            case appleTV_4thGeneration = "AppleTV5,3"
            /// TV 4K model identifier.
            case appleTV_4K = "AppleTV6,2"

            //MARK: Apple Watch
            /// Watch (1st Generation) 38mm model identifier.
            case appleWatch_1stGeneration_38mm = "Watch1,1"
            /// Watch (1st Generation) 42mm model identifier.
            case appleWatch_1stGeneration_42mm = "Watch1,2"
            /// Watch Series 1 38mm model identifier.
            case appleWatchSeries1_38mm = "Watch2,6"
            /// Watch Series 1 42mm model identifier.
            case appleWatchSeries1_42mm = "Watch2,7"
            /// Watch Series 2 38mm model identifier.
            case appleWatchSeries2_38mm = "Watch2,3"
            /// Watch Series 2 42mm model identifier.
            case appleWatchSeries2_42mm = "Watch2,4"
            /// Watch Series 3 38mm (GPS+Cellular) model identifier.
            case appleWatchSeries3_38mm_GPS_Cellular = "Watch3,1"
            /// Watch Series 3 42mm (GPS+Cellular) model identifier.
            case appleWatchSeries3_42mm_GPS_Cellular = "Watch3,2"
            /// Watch Series 3 38mm (GPS) model identifier.
            case appleWatchSeries3_38mm_GPS = "Watch3,3"
            /// Watch Series 3 42mm (GPS) model identifier.
            case appleWatchSeries3_42mm_GPS = "Watch3,4"

            //MARK: Home Pod
            /// HomePod model identifier.
            case homePod_1 = "AudioAccessory1,1"
            /// HomePod (`¯\_(ツ)_/¯`) model identifier.
            case homePod_2 = "AudioAccessory1,2"

            //MARK: iPad
            /// iPad 2 WiFi model identifier.
            case iPad_2 = "iPad2,1"
            /// iPad 2 GSM model identifier.
            case iPad_2_GSM = "iPad2,2"
            /// iPad 2 CDMA model identifier.
            case iPad_2_CDMA = "iPad2,3"
            /// iPad 2 WiFi (revision 2) model identifier.
            case iPad_2_2 = "iPad2,4"
            /// iPad (3rd Generation) WiFi model identifier.
            case iPad_3rdGeneration = "iPad3,1"
            /// iPad (3rd Generation) Verizon model identifier.
            case iPad_3rdGeneration_Verizon = "iPad3,2"
            /// iPad (3rd Generation) GSM model identifier.
            case iPad_3rdGeneration_GSM = "iPad3,3"
            /// iPad (4th Generation) WiFi model identifier.
            case iPad_4thGeneration = "iPad3,4"
            /// iPad (4th Generation) CDMA model identifier.
            case iPad_4thGeneration_CDMA = "iPad3,5"
            /// iPad (4th Generation) Multi-Modal model identifier.
            case iPad_4thGeneration_MM = "iPad3,6"
            /// iPad air WiFi model identifier.
            case iPadAir = "iPad4,1"
            /// iPad air GSM model identifier.
            case iPadAir_GSM = "iPad4,2"
            /// iPad air LTE model identifier.
            case iPadAir_TD_LTE = "iPad4,3"
            /// iPad air 2 WiFi model identifier.
            case iPadAir_2 = "iPad5,3"
            /// iPad air 2 Cellular model identifier.
            case iPadAir_2_Cellular = "iPad5,4"
            /// iPad Pro 12.9" WiFi model identifier.
            case iPadPro_12_9_Inch = "iPad6,7"
            /// iPad Pro 12.9" Cellular model identifier.
            case iPadPro_12_9_Inch_Cellular = "iPad6,8"
            /// iPad Pro 9.7" WiFi model identifier.
            case iPadPro_9_7_Inch = "iPad6,3"
            /// iPad Pro 9.7" Cellular model identifier.
            case iPadPro_9_7_Inch_Cellular = "iPad6,4"
            /// iPad (5th Generation) WiFi model identifier.
            case iPad_5thGeneration = "iPad6,11"
            /// iPad (5th Generation) Cellular model identifier.
            case iPad_5thGeneration_Cellular = "iPad6,12"
            /// iPad Pro 12.9" (2nd Generation) WiFi model identifier.
            case iPadPro_12_9_Inch_2ndGeneration = "iPad7,1"
            /// iPad Pro 12.9" (2nd Generation) Cellular model identifier.
            case iPadPro_12_9_Inch_2ndGeneration_Cellular = "iPad7,2"
            /// iPad Pro 10.5" WiFi model identifier.
            case iPadPro_10_5_Inch = "iPad7,3"
            /// iPad Pro 10.5" Cellular model identifier.
            case iPadPro_10_5_Inch_Cellular = "iPad7,4"
            /// iPad (6th Generation) WiFi model identifier.
            case iPad_6thGeneration = "iPad7,5"
            /// iPad (6th Generation) Cellular model identifier.
            case iPad_6thGeneration_Cellular = "iPad7,6"
            /// iPad mini WiFi model identifier.
            case iPad_Mini = "iPad2,5"
            /// iPad mini CDMA model identifier.
            case iPad_Mini_CDMA = "iPad2,6"
            /// iPad mini Multi-Modal model identifier.
            case iPad_Mini_MM = "iPad2,7"
            /// iPad mini 2 WiFi model identifier.
            case iPad_Mini_2 = "iPad4,4"
            /// iPad mini 2 GSM model identifier.
            case iPad_Mini_2_GSM = "iPad4,5"
            /// iPad mini 2 LTE model identifier.
            case iPad_Mini_2_TD_LTE = "iPad4,6"
            /// iPad mini 3 WiFi model identifier.
            case iPad_Mini_3 = "iPad4,7"
            /// iPad mini 3 GSM model identifier.
            case iPad_Mini_3_GSM = "iPad4,8"
            /// iPad mini 3 (China) model identifier.
            case iPad_Mini_3_China = "iPad4,9"
            /// iPad mini 4 WiFi model identifier.
            case iPad_Mini_4 = "iPad5,1"
            /// iPad mini 4 GSM model identifier.
            case iPad_Mini_4_GSM = "iPad5,2"

            //MARK: iPhone
            /// iPhone 4s model identifier.
            case iPhone4s = "iPhone4,1"
            /// iPhone 5 model identifier.
            case iPhone5 = "iPhone5,1"
            /// iPhone 5 (revision 2) model identifier.
            case iPhone5_2 = "iPhone5,2"
            /// iPhone 5c (North America and Japan) model identifier.
            case iPhone5c_NorthAmerica_Japan = "iPhone5,3"
            /// iPhone 5c (Europe and Asia) model identifier.
            case iPhone5c_Europe_Asia = "iPhone5,4"
            /// iPhone 5s (North America and Japan) model identifier.
            case iPhone5s_NorthAmerica_Japan = "iPhone6,1"
            /// iPhone 5s (Europe and Asia) model identifier.
            case iPhone5s_Europe_Asia = "iPhone6,2"
            /// iPhone 6 model identifier.
            case iPhone6 = "iPhone7,2"
            /// iPhone 6 Plus model identifier.
            case iPhone6Plus = "iPhone7,1"
            /// iPhone 6s model identifier.
            case iPhone6s = "iPhone8,1"
            /// iPhone 6s Plus model identifier.
            case iPhone6sPlus = "iPhone8,2"
            /// iPhone SE model identifier.
            case iPhoneSE = "iPhone8,4"
            /// iPhone 7 CDMA model identifier.
            case iPhone7_CDMA = "iPhone9,1"
            /// iPhone 7 Global model identifier.
            case iPhone7_Global = "iPhone9,3"
            /// iPhone 7 Plust CDMA model identifier.
            case iPhone7Plus_CDMA = "iPhone9,2"
            /// iPhone 7 Plus Global model identifier.
            case iPhone7Plus_Global = "iPhone9,4"
            /// iPhone 8 model identifier.
            case iPhone8 = "iPhone10,1"
            /// iPhone 8 (revision 2) model identifier.
            case iPhone8_2 = "iPhone10,4"
            /// iPhone 8 Plus model identifier.
            case iPhone8Plus = "iPhone10,2"
            /// iPhone 8 Plus (revision 2) model identifier.
            case iPhone8Plus_2 = "iPhone10,5"
            /// iPhone X model identifier.
            case iPhoneX = "iPhone10,3"
            /// iPhone X (revision 2) model identifier.
            case iPhoneX_2 = "iPhone10,6"

            //MARK: iPod touch
            /// iPod touch (5th Generation) model identifier.
            case iPodTouch_5thGeneration = "iPod5,1"
            /// iPod touch (6th Generation) model identifier.
            case iPodTouch_6thGeneration = "iPod7,1"

            //MARK: MacBook air
            /// MacBook air 2009 model identifier.
            case macBookAir_2009 = "MacBookAir2,1"
            /// MacBook air 11" 2010 model identifier.
            case macBookAir_11_Inch_2010 = "MacBookAir3,1"
            /// MacBook air 13" 2010 model identifier.
            case macBookAir_13_Inch_2010 = "MacBookAir3,2"
            /// MacBook air 11" 2011 model identifier.
            case macBookAir_11_Inch_2011 = "MacBookAir4,1"
            /// MacBook air 13" 2011 model identifier.
            case macBookAir_13_Inch_2011 = "MacBookAir4,2"
            /// MacBook air 11" 2012 model identifier.
            case macBookAir_11_Inch_2012 = "MacBookAir5,1"
            /// MacBook air 13" 2012 model identifier.
            case macBookAir_13_Inch_2012 = "MacBookAir5,2"
            /// MacBook air 11" 2013 model identifier.
            case macBookAir_11_Inch_2013 = "MacBookAir6,1"
            /// MacBook air 13" 2013 model identifier.
            case macBookAir_13_Inch_2013 = "MacBookAir6,2"
            /// MacBook air 11" 2015 model identifier.
            case macBookAir_11_Inch_2015 = "MacBookAir7,1"
            /// MacBook air 13" 2015 model identifier.
            case macBookAir_13_Inch_2015 = "MacBookAir7,2"

            //MARK: MacBook
            /// MacBook (Early 2009) model identifier.
            case macBook_Early_2009 = "MacBook5,2"
            /// MacBook (Late 2009) model identifier.
            case macBook_Late_2009 = "MacBook6,1"
            /// MacBook 2010 model identifier.
            case macBook_2010 = "MacBook7,1"
            /// MacBook 2015 model identifier.
            case macBook_2015 = "MacBook8,1"
            /// MacBook 2016 model identifier.
            case macBook_2016 = "MacBook9,1"
            /// MacBook 2017 model identifier.
            case macBook_2017 = "MacBook10,1"

            //MARK: MacBook Pro
            /// MacBook Pro (Early 2008) model identifier.
            case macBookPro_Early_2008 = "MacBookPro4,1"
            /// MacBook Pro (Late 2008) model identifier.
            case macBookPro_Late_2008 = "MacBookPro5,1"
            /// MacBook Pro 13" 2009 model identifier.
            case macBookPro_13_Inch_2009 = "MacBookPro5,5"
            /// MacBook Pro 15" 2009 model identifier.
            case macBookPro_15_Inch_2009 = "MacBookPro5,3"
            /// MacBook Pro 17" 2009 model identifier.
            case macBookPro_17_Inch_2009 = "MacBookPro5,2"
            /// MacBook Pro 13" 2010 model identifier.
            case macBookPro_13_Inch_2010 = "MacBookPro7,1"
            /// MacBook Pro 15" 2010 model identifier.
            case macBookPro_15_Inch_2010 = "MacBookPro6,2"
            /// MacBook Pro 17" 2010 model identifier.
            case macBookPro_17_Inch_2010 = "MacBookPro6,1"
            /// MacBook Pro 13" 2011 model identifier.
            case macBookPro_13_Inch_2011 = "MacBookPro8,1"
            /// MacBook Pro 15" 2011 model identifier.
            case macBookPro_15_Inch_2011 = "MacBookPro8,2"
            /// MacBook Pro 17" 2011 model identifier.
            case macBookPro_17_Inch_2011 = "MacBookPro8,3"
            /// MacBook Pro 13" 2012 model identifier.
            case macBookPro_13_Inch_2012 = "MacBookPro9,2"
            /// MacBook Pro 13" Retina 2012 model identifier.
            case macBookPro_13_Inch_Retina_2012 = "MacBookPro10,2"
            /// MacBook Pro 15" 2012 model identifier.
            case macBookPro_15_Inch_2012 = "MacBookPro9,1"
            /// MacBook Pro 15" Retina 2012 model identifier.
            case macBookPro_15_Inch_Retina_2012 = "MacBookPro10,1"
            /// MacBook Pro 13" 2013 model identifier.
            case macBookPro_13_Inch_2013 = "MacBookPro11,1"
            /// MacBook Pro 15" 2013 model identifier.
            case macBookPro_15_Inch_2013 = "MacBookPro11,2"
            /// MacBook Pro 15" 2013 (revision 2) model identifier.
            case macBookPro_15_Inch_2013_2 = "MacBookPro11,3"
            /// MacBook Pro 13" 2015 model identifier.
            case macBookPro_13_Inch_2015 = "MacBookPro12,1"
            /// MacBook Pro 15" 2015 model identifier.
            case macBookPro_15_Inch_2015 = "MacBookPro11,4"
            /// MacBook Pro 15" 2015 (revision 2) model identifier.
            case macBookPro_15_Inch_2015_2 = "MacBookPro11,5"
            /// MacBook Pro 13" (Two Thunderbolt ports) 2016 model identifier.
            case macBookPro_13_Inch_2_Thunderbolt_2016 = "MacBookPro13,1"
            /// MacBook Pro 13" (Four Thunderbolt ports) 2016 model identifier.
            case macBookPro_13_Inch_4_Thunderbolt_2016 = "MacBookPro13,2"
            /// MacBook Pro 15" 2016 model identifier.
            case macBookPro_15_Inch_2016 = "MacBookPro13,3"
            /// MacBook Pro 13" (Two Thunderbolt ports) 2017 model identifier.
            case macBookPro_13_Inch_2_Thunderbolt_2017 = "MacBookPro14,1"
            /// MacBook Pro 13" (Four Thunderbolt ports) 2017 model identifier.
            case macBookPro_13_Inch_4_Thunderbolt_2017 = "MacBookPro14,2"
            /// MacBook Pro 15" 2017 model identifier.
            case macBookPro_15_Inch_2017 = "MacBookPro14,3"
            /// MacBook Pro 13" 2018 model identifier.
            case macBookPro_13_Inch_2018 = "MacBookPro15,2"
            /// MacBook Pro 15" 2018 model identifier.
            case macBookPro_15_Inch_2018 = "MacBookPro15,1"

            //MARK: Mac mini
            /// Mac mini 2009 model identifier.
            case macMini_2009 = "Macmini3,1"
            /// Mac mini 2010 model identifier.
            case macMini_2010 = "Macmini4,1"
            /// Mac mini 2011 model identifier.
            case macMini_2011 = "Macmini5,1"
            /// Mac mini 2011 (revision 2) model identifier.
            case macMini_2011_2 = "Macmini5,2"
            /// Mac mini 2012 model identifier.
            case macMini_2012 = "Macmini6,1"
            /// Mac mini 2012 (revision 2) model identifier.
            case macMini_2012_2 = "Macmini6,2"
            /// Mac mini 2014 model identifier.
            case macMini_2014 = "Macmini7,1"

            //MARK: iMac
            /// iMac (Early 2009) model identifier.
            case iMac_Early_2009 = "iMac9,1"
            /// iMac (Late 2009) model identifier.
            case iMac_Late_2009 = "iMac10,1"
            /// iMac 21.5" 2010 model identifier.
            case iMac_21_5_Inch_2010 = "iMac11,2"
            /// iMac 27" 2010 model identifier.
            case iMac_27_Inch_2010 = "iMac11,3"
            /// iMac 21.5" 2011 model identifier.
            case iMac_21_5_Inch_2011 = "iMac12,1"
            /// iMac 27" 2011 model identifier.
            case iMac_27_Inch_2011 = "iMac12,2"
            /// iMac 21.5" 2012 model identifier.
            case iMac_21_5_Inch_2012 = "iMac13,1"
            /// iMac 27" 2012 model identifier.
            case iMac_27_Inch_2012 = "iMac13,2"
            /// iMac 21.5" 2013 model identifier.
            case iMac_21_5_Inch_2013 = "iMac14,1"
            /// iMac 27" 2013 model identifier.
            case iMac_27_Inch_2013 = "iMac14,2"
            /// iMac 21.5" 2014 model identifier.
            case iMac_21_5_Inch_2014 = "iMac14,4"
            /// iMac 27" 5K 2014 model identifier.
            case iMac_27_Inch_5K_2014 = "iMac15,1"
            /// iMac 21.5" 2015 model identifier.
            case iMac_21_5_Inch_2015 = "iMac16,1"
            /// iMac 21.5" 4K 2015 model identifier.
            case iMac_21_5_4K_Inch_2015 = "iMac16,2"
            /// iMac 27" 5K 2015 model identifier.
            case iMac_27_Inch_5K_2015 = "iMac17,1"
            /// iMac 21.5" 2017 model identifier.
            case iMac_21_5_Inch_2017 = "iMac18,1"
            /// iMac 21.5" 4K 2017 model identifier.
            case iMac_21_5_4K_Inch_2017 = "iMac18,2"
            /// iMac 27" 5K 2017 model identifier.
            case iMac_27_Inch_5K_2017 = "iMac18,3"

            //MARK: Mac Pro
            /// Mac Pro 2009 model identifier.
            case macPro_2009 = "MacPro4,1"
            /// Mac Pro 2010 model identifier.
            case macPro_2010 = "MacPro5,1"
            /// Mac Pro 2013 model identifier.
            case macPro_2013 = "MacPro6,1"
        }
    }

    /**
     Contains information about the current screen available to your app.
     */
    public struct Screen {}
    /**
     Contains information about the OS running your app.
     */
    public struct OS {}
    /**
     Meta information about your app, mainly reading from Info.plist.
     */
    public struct App {}

    /**
     The `Version` struct defines a software version in the format **major.minor.patch (build)**.

     `Defines` uses it to describe either the OS version or your app's version, according to your Info.plist file.

     It is particularly useful to compare versions of your app. For example:

     ```swift
     let currentVersion = Defines.App.version(forClass: AppDelegate.self)
     let oldVersion = Defines.Version(versionString: "1.0.0")
     if currentVersion == oldVersion {
        //your user is still running an old version of the app
        //perhaps you want to let them know there's a new one available
        //or let them know their version will be deprecated soon
     }
     ```
     */
    public struct Version: Equatable, Comparable, CustomStringConvertible {
        /// The version's major number: **major**.minor.patch (build)
        public let major: Int
        /// The version's minor number: major.**minor**.patch (build)
        public let minor: Int
        /// The version's patch number: major.minor.**patch** (build)
        public let patch: Int
        /// The version's build string: major.minor.patch (**build**)
        public let build: String

        /**
         Creates a new `Version` from a major, a minor and a patch `Int`s and a build `String`.

         Example:

         ```
         let version = Defines.Version(major: 1, minor: 0, patch: 0, build: "3")
         print(version) //prints 'Version: 1.0.0 (3)'
         ```

         - parameters:
             - major:   The version's major number. Must be greater than or equal to 0. Defaults to 0.
             - minor:   The version's minor number. Must be greater than or equal to 0. Defaults to 0.
             - patch:   The version's patch number. Must be greater than or equal to 0. Defaults to 0.
             - build:   The version's build string. Defaults to an empty string.
         */
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
