import XCTest
#if os(iOS)
@testable import iOS_Example
#endif
#if os(tvOS)
@testable import tvOS_Example
#endif
#if os(macOS)
@testable import macOS_Example
#endif
@testable import Defines


class ScreenTests: XCTestCase
{
    func testNoScreen() {
        let modelNames = ["Mac", "AudioAccessory", "AirPods"]
        let keyPath = "noScreen"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelNames) else { return nil }
            switch $0 {
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
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.noScreen ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelNames) responding true to '\(keyPath)' is not correct")
    }

    func test_38mm() {
        let modelName = "Watch"
        let keyPath = "is_38_mm"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .appleWatch_1stGeneration_38mm,
                 .appleWatchSeries1_38mm,
                 .appleWatchSeries2_38mm,
                 .appleWatchSeries3_38mm_GPS_Cellular,
                 .appleWatchSeries3_38mm_GPS:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_38_mm ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_42mm() {
        let modelName = "Watch"
        let keyPath = "is_42_mm"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .appleWatch_1stGeneration_42mm,
                 .appleWatchSeries1_42mm,
                 .appleWatchSeries2_42mm,
                 .appleWatchSeries3_42mm_GPS_Cellular,
                 .appleWatchSeries3_42mm_GPS:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_42_mm ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_3_5_Inch() {
        let modelName = "iPhone"
        let keyPath = "is_3_5_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPhone4s:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_3_5_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_4_Inch() {
        let modelNames = ["iPhone", "iPod"]
        let keyPath = "is_4_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelNames) else { return nil }
            if $0.isiPhoneC {
                return $0
            }
            if $0.isiPhoneSE {
                return $0
            }
            if $0.isiPodTouch {
                return $0
            }
            switch $0 {
            case .iPhone5,
                 .iPhone5_2,
                 .iPhone5s_NorthAmerica_Japan,
                 .iPhone5s_Europe_Asia:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_4_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelNames) responding true to '\(keyPath)' is not correct")
    }

    func test_4_7_Inch() {
        let modelName = "iPhone"
        let keyPath = "is_4_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPhone6,
                 .iPhone6s,
                 .iPhone7_CDMA,
                 .iPhone7_Global,
                 .iPhone8,
                 .iPhone8_2:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_4_7_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_5_5_Inch() {
        let modelName = "iPhone"
        let keyPath = "is_5_5_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            return $0.isiPhonePlus ? $0 : nil
        }
        let trueCollection = allModels.compacted { $0.is_5_5_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_5_8_Inch() {
        let modelName = "iPhone"
        let keyPath = "is_5_8_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            return $0.isiPhoneX ? $0 : nil
        }
        let trueCollection = allModels.compacted { $0.is_5_8_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_7_9_Inch() {
        let modelName = "iPad"
        let keyPath = "is_7_9_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            return $0.isiPadMini ? $0 : nil
        }
        let trueCollection = allModels.compacted { $0.is_7_9_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_9_7_Inch() {
        let modelName = "iPad"
        let keyPath = "is_9_7_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            guard $0.isiPadRegular else { return nil }
            return $0
        }
        let trueCollection = allModels.compacted { $0.is_9_7_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_10_5_Inch() {
        let modelName = "iPad"
        let keyPath = "is_10_5_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPadPro_10_5_Inch,
                 .iPadPro_10_5_Inch_Cellular:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_10_5_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_11_Inch() {
        let modelName = "Mac"
        let keyPath = "is_11_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .macBookAir_11_Inch_2010,
                 .macBookAir_11_Inch_2011,
                 .macBookAir_11_Inch_2012,
                 .macBookAir_11_Inch_2013,
                 .macBookAir_11_Inch_2015:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_11_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_12_Inch() {
        let modelName = "Mac"
        let keyPath = "is_12_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .macBook_2015,
                 .macBook_2016,
                 .macBook_2017:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_12_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_12_9_Inch() {
        let modelName = "iPad"
        let keyPath = "is_12_9_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPadPro_12_9_Inch,
                 .iPadPro_12_9_Inch_Cellular,
                 .iPadPro_12_9_Inch_2ndGeneration,
                 .iPadPro_12_9_Inch_2ndGeneration_Cellular:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_12_9_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_13_Inch() {
        let modelName = "Mac"
        let keyPath = "is_13_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
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
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_13_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_15_Inch() {
        let modelName = "Mac"
        let keyPath = "is_15_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
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
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_15_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_17_Inch() {
        let modelName = "Mac"
        let keyPath = "is_17_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .macBookPro_17_Inch_2009,
                 .macBookPro_17_Inch_2010,
                 .macBookPro_17_Inch_2011:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_17_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_21_5_Inch() {
        let modelName = "Mac"
        let keyPath = "is_21_5_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iMac_21_5_Inch_2010,
                 .iMac_21_5_Inch_2011,
                 .iMac_21_5_Inch_2012,
                 .iMac_21_5_Inch_2013,
                 .iMac_21_5_Inch_2014,
                 .iMac_21_5_Inch_2015,
                 .iMac_21_5_4K_Inch_2015,
                 .iMac_21_5_Inch_2017,
                 .iMac_21_5_4K_Inch_2017:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_21_5_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_27_Inch() {
        let modelName = "Mac"
        let keyPath = "is_27_Inch"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iMac_27_Inch_2010,
                 .iMac_27_Inch_2011,
                 .iMac_27_Inch_2012,
                 .iMac_27_Inch_2013,
                 .iMac_27_Inch_5K_2014,
                 .iMac_27_Inch_5K_2015,
                 .iMac_27_Inch_5K_2017:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_27_Inch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func test_4K() {
        let modelNames = ["Mac", "AppleTV"]
        let keyPath = "is_4K"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelNames) else { return nil }
            switch $0 {
            case .appleTV_4K,
                 .iMac_21_5_4K_Inch_2015,
                 .iMac_21_5_4K_Inch_2017:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_4K ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelNames) responding true to '\(keyPath)' is not correct")
    }

    func test_5K() {
        let modelName = "Mac"
        let keyPath = "is_5K"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iMac_27_Inch_5K_2014,
                 .iMac_27_Inch_5K_2015,
                 .iMac_27_Inch_5K_2017:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.is_5K ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func testUndefinedScreen() {
        let modelNames = ["Mac", "AppleTV"]
        let keyPath = "undefinedScreen"
        let allModels = makeAllModels()

        let collection: [Defines.Device.Model] = allModels.compacted {
            guard $0.rawValue.contains(modelNames) else { return nil }
            switch $0 {
            case .appleTV_2ndGeneration,
                 .appleTV_3rdGeneration_1,
                 .appleTV_3rdGeneration_2,
                 .appleTV_4thGeneration,
                 .appleTV_4K,
                 .macBookPro_Early_2008,
                 .iMac_Early_2009,
                 .iMac_Late_2009:
                return $0
            default:
                return nil
            }
        }
        let trueCollection = allModels.compacted { $0.undefinedScreen ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelNames) responding true to '\(keyPath)' is not correct")
    }

    func testAllScreens() {
        let allModels = makeAllModels()

        let all_NoScreen = allModels.filter { $0.noScreen }
        let all_is_38_mm = allModels.filter { $0.is_38_mm }
        let all_is_42_mm = allModels.filter { $0.is_42_mm }
        let all_is_3_5_Inch = allModels.filter { $0.is_3_5_Inch }
        let all_is_4_Inch = allModels.filter { $0.is_4_Inch }
        let all_is_4_7_Inch = allModels.filter { $0.is_4_7_Inch }
        let all_is_5_5_Inch = allModels.filter { $0.is_5_5_Inch }
        let all_is_5_8_Inch = allModels.filter { $0.is_5_8_Inch }
        let all_is_7_9_Inch = allModels.filter { $0.is_7_9_Inch }
        let all_is_9_7_Inch = allModels.filter { $0.is_9_7_Inch }
        let all_is_10_5_Inch = allModels.filter { $0.is_10_5_Inch }
        let all_is_11_Inch = allModels.filter { $0.is_11_Inch }
        let all_is_12_Inch = allModels.filter { $0.is_12_Inch }
        let all_is_12_9_Inch = allModels.filter { $0.is_12_9_Inch }
        let all_is_13_Inch = allModels.filter { $0.is_13_Inch }
        let all_is_15_Inch = allModels.filter { $0.is_15_Inch }
        let all_is_17_Inch = allModels.filter { $0.is_17_Inch }
        let all_is_21_5_Inch = allModels.filter { $0.is_21_5_Inch }
        let all_is_27_Inch = allModels.filter { $0.is_27_Inch }
        let all_UndefinedScreen = allModels.filter { $0.undefinedScreen }

        let allScreens = [
            all_NoScreen,
            all_is_38_mm,
            all_is_42_mm,
            all_is_3_5_Inch,
            all_is_4_Inch,
            all_is_4_7_Inch,
            all_is_5_5_Inch,
            all_is_5_8_Inch,
            all_is_7_9_Inch,
            all_is_9_7_Inch,
            all_is_10_5_Inch,
            all_is_11_Inch,
            all_is_12_Inch,
            all_is_12_9_Inch,
            all_is_13_Inch,
            all_is_15_Inch,
            all_is_17_Inch,
            all_is_21_5_Inch,
            all_is_27_Inch,
            all_UndefinedScreen
        ]

        XCTAssertTrue(all_NoScreen.doesNotContainAnyElementsIn(allScreens.removing(all_NoScreen)),
                      "The all_NoScreen array shouldn't have any elements in all the other screen arrays\n - all_NoScreen: \(all_NoScreen)\n - Other arrays: \(allScreens.removing(all_NoScreen))")
        XCTAssertTrue(all_is_38_mm.doesNotContainAnyElementsIn(allScreens.removing(all_is_38_mm)),
                      "The all_is_38_mm array shouldn't have any elements in all the other screen arrays\n - all_is_38_mm: \(all_is_38_mm)\n - Other arrays: \(allScreens.removing(all_is_38_mm))")
        XCTAssertTrue(all_is_42_mm.doesNotContainAnyElementsIn(allScreens.removing(all_is_42_mm)),
                      "The all_is_42_mm array shouldn't have any elements in all the other screen arrays\n - all_is_42_mm: \(all_is_42_mm)\n - Other arrays: \(allScreens.removing(all_is_42_mm))")
        XCTAssertTrue(all_is_3_5_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_3_5_Inch)),
                      "The all_is_3_5_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_3_5_Inch: \(all_is_3_5_Inch)\n - Other arrays: \(allScreens.removing(all_is_3_5_Inch))")
        XCTAssertTrue(all_is_4_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_4_Inch)),
                      "The all_is_4_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_4_Inch: \(all_is_4_Inch)\n - Other arrays: \(allScreens.removing(all_is_4_Inch))")
        XCTAssertTrue(all_is_4_7_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_4_7_Inch)),
                      "The all_is_4_7_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_4_7_Inch: \(all_is_4_7_Inch)\n - Other arrays: \(allScreens.removing(all_is_4_7_Inch))")
        XCTAssertTrue(all_is_5_5_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_5_5_Inch)),
                      "The all_is_5_5_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_5_5_Inch: \(all_is_5_5_Inch)\n - Other arrays: \(allScreens.removing(all_is_5_5_Inch))")
        XCTAssertTrue(all_is_5_8_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_5_8_Inch)),
                      "The all_is_5_8_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_5_8_Inch: \(all_is_5_8_Inch)\n - Other arrays: \(allScreens.removing(all_is_5_8_Inch))")
        XCTAssertTrue(all_is_7_9_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_7_9_Inch)),
                      "The all_is_7_9_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_7_9_Inch: \(all_is_7_9_Inch)\n - Other arrays: \(allScreens.removing(all_is_7_9_Inch))")
        XCTAssertTrue(all_is_9_7_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_9_7_Inch)),
                      "The all_is_9_7_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_9_7_Inch: \(all_is_9_7_Inch)\n - Other arrays: \(allScreens.removing(all_is_9_7_Inch))")
        XCTAssertTrue(all_is_10_5_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_10_5_Inch)),
                      "The all_is_10_5_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_10_5_Inch: \(all_is_10_5_Inch)\n - Other arrays: \(allScreens.removing(all_is_10_5_Inch))")
        XCTAssertTrue(all_is_11_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_11_Inch)),
                      "The all_is_11_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_11_Inch: \(all_is_11_Inch)\n - Other arrays: \(allScreens.removing(all_is_11_Inch))")
        XCTAssertTrue(all_is_12_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_12_Inch)),
                      "The all_is_12_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_12_Inch: \(all_is_12_Inch)\n - Other arrays: \(allScreens.removing(all_is_12_Inch))")
        XCTAssertTrue(all_is_12_9_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_12_9_Inch)),
                      "The all_is_12_9_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_12_9_Inch: \(all_is_12_9_Inch)\n - Other arrays: \(allScreens.removing(all_is_12_9_Inch))")
        XCTAssertTrue(all_is_13_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_13_Inch)),
                      "The all_is_13_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_13_Inch: \(all_is_13_Inch)\n - Other arrays: \(allScreens.removing(all_is_13_Inch))")
        XCTAssertTrue(all_is_15_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_15_Inch)),
                      "The all_is_15_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_15_Inch: \(all_is_15_Inch)\n - Other arrays: \(allScreens.removing(all_is_15_Inch))")
        XCTAssertTrue(all_is_17_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_17_Inch)),
                      "The all_is_17_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_17_Inch: \(all_is_17_Inch)\n - Other arrays: \(allScreens.removing(all_is_17_Inch))")
        XCTAssertTrue(all_is_21_5_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_21_5_Inch)),
                      "The all_is_21_5_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_21_5_Inch: \(all_is_21_5_Inch)\n - Other arrays: \(allScreens.removing(all_is_21_5_Inch))")
        XCTAssertTrue(all_is_27_Inch.doesNotContainAnyElementsIn(allScreens.removing(all_is_27_Inch)),
                      "The all_is_27_Inch array shouldn't have any elements in all the other screen arrays\n - all_is_27_Inch: \(all_is_27_Inch)\n - Other arrays: \(allScreens.removing(all_is_27_Inch))")
        XCTAssertTrue(all_UndefinedScreen.doesNotContainAnyElementsIn(allScreens.removing(all_UndefinedScreen)),
                      "The all_UndefinedScreen array shouldn't have any elements in all the other screen arrays\n - all_UndefinedScreen: \(all_UndefinedScreen)\n - Other arrays: \(allScreens.removing(all_UndefinedScreen))")

        var missingScreens = allModels.filter { !all_is_38_mm.contains($0) }
        missingScreens = missingScreens.filter { !all_NoScreen.contains($0) }
        missingScreens = missingScreens.filter { !all_is_42_mm.contains($0) }
        missingScreens = missingScreens.filter { !all_is_3_5_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_4_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_4_7_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_5_5_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_5_8_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_7_9_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_9_7_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_10_5_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_11_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_12_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_12_9_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_13_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_15_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_17_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_21_5_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_is_27_Inch.contains($0) }
        missingScreens = missingScreens.filter { !all_UndefinedScreen.contains($0) }

        XCTAssertTrue(missingScreens.elementsEqual([Defines.Device.Model.unknown]),
                      "All models should have been filtered. There's probably a model that isn't covered by 'is_{ModelName}' boolean variables. \n - Missing screens: \(missingScreens)")
    }
}
