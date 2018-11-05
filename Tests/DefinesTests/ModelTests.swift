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


class ModelTests: XCTestCase
{
    func testAllModels() {
        let madeModels = makeAllModels()
        XCTAssertEqual(madeModels.count, 171, "Have we missed any models?")

        var allModels: [Defines.Device.Model] = [
            .unknown,
            .airPods,
            .appleTV_2ndGeneration,
            .appleTV_3rdGeneration,
            .appleTV_3rdGeneration_2,
            .appleTV_4thGeneration,
            .appleTV_4K,
            .appleWatch_1stGeneration_38mm,
            .appleWatch_1stGeneration_42mm,
            .appleWatchSeries1_38mm,
            .appleWatchSeries1_42mm,
            .appleWatchSeries2_38mm,
            .appleWatchSeries2_42mm,
            .appleWatchSeries3_38mm_GPS_Cellular,
            .appleWatchSeries3_42mm_GPS_Cellular,
            .appleWatchSeries3_38mm_GPS,
            .appleWatchSeries3_42mm_GPS,
            .appleWatchSeries4_40mm_GPS,
            .appleWatchSeries4_44mm_GPS,
            .appleWatchSeries4_40mm_GPS_Cellular,
            .appleWatchSeries4_44mm_GPS_Cellular,
            .homePod_1,
            .homePod_2,
            .iPad_2,
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
            .iPadPro_10_5_Inch_Cellular,
            .iPadPro_10_5_Inch,
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
            .iPad_Mini_4_GSM,
            .iPadPro_11_Inch,
            .iPadPro_11_Inch_1TB,
            .iPadPro_11_Inch_Cellular,
            .iPadPro_11_Inch_1TB_Cellular,
            .iPadPro_12_9_Inch_3rdGeneration,
            .iPadPro_12_9_Inch_3rdGeneration_Cellular,
            .iPadPro_12_9_Inch_3rdGeneration_1TB,
            .iPadPro_12_9_Inch_3rdGeneration_1TB_Cellular,
            .iPhone4s,
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
            .iPhoneX_2,
            .iPhoneXR,
            .iPhoneXS,
            .iPhoneXS_Max,
            .iPhoneXS_Max_China,
            .iPodTouch_5thGeneration,
            .iPodTouch_6thGeneration,
            .macBookAir_2009,
            .macBookAir_11_Inch_2010,
            .macBookAir_13_Inch_2010,
            .macBookAir_11_Inch_2011,
            .macBookAir_13_Inch_2011,
            .macBookAir_11_Inch_2012,
            .macBookAir_13_Inch_2012,
            .macBookAir_11_Inch_2013,
            .macBookAir_13_Inch_2013,
            .macBookAir_11_Inch_2015,
            .macBookAir_13_Inch_2015,
            .macBook_Early_2009,
            .macBook_Late_2009,
            .macBook_2010,
            .macBook_2015,
            .macBook_2016,
            .macBook_2017,
            .macBookPro_Early_2008,
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
            .macBookPro_15_Inch_2012,
            .macBookPro_13_Inch_Retina_2012,
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
            .macBookPro_15_Inch_2018,
            .macMini_2009,
            .macMini_2010,
            .macMini_2011,
            .macMini_2011_2,
            .macMini_2012,
            .macMini_2012_2,
            .macMini_2014,
            .iMac_Early_2009,
            .iMac_Late_2009,
            .iMac_21_5_Inch_2010,
            .iMac_27_Inch_2010,
            .iMac_21_5_Inch_2011,
            .iMac_27_Inch_2011,
            .iMac_27_Inch_2012,
            .iMac_21_5_Inch_2012,
            .iMac_21_5_Inch_2013,
            .iMac_27_Inch_2013,
            .iMac_21_5_Inch_2014,
            .iMac_27_Inch_5K_2014,
            .iMac_21_5_Inch_2015,
            .iMac_21_5_4K_Inch_2015,
            .iMac_27_Inch_5K_2015,
            .iMac_21_5_Inch_2017,
            .iMac_21_5_4K_Inch_2017,
            .iMac_27_Inch_5K_2017,
            .macPro_2009,
            .macPro_2010,
            .macPro_2013
        ]

        XCTAssertEqual(allModels.count, madeModels.count, "Have we misiPhoneSEd any models?")

        madeModels.forEach { model in
            if let (index, _) = allModels.enumerated().first(where: { (index, element) -> Bool in
                return model == element
            }) {
                allModels.remove(at: index)
            }
        }

        XCTAssertEqual(allModels.count, 0, "Remaining models: \(allModels)")

        let all_AirPods = madeModels.filter { $0.isAirPods }
        let all_AppleTVs = madeModels.filter { $0.isAppleTV }
        let all_AppleWatch = madeModels.filter { $0.isAppleWatch }
        let all_HomePods = madeModels.filter { $0.isHomePod }
        let all_iPads = madeModels.filter { $0.isiPad }
        let all_iPhone = madeModels.filter { $0.isiPhone }
        let all_iPodTouch = madeModels.filter { $0.isiPodTouch }
        let all_isMacBookAir = madeModels.filter { $0.isMacBookAir }
        let all_isMacBook = madeModels.filter { $0.isMacBook }
        let all_isMacBookPro = madeModels.filter { $0.isMacBookPro }
        let all_isMacMini = madeModels.filter { $0.isMacMini }
        let all_iMac = madeModels.filter { $0.isiMac }
        let all_MacPro = madeModels.filter { $0.isMacPro }

        var filteredModels = madeModels.filter { !all_AirPods.contains($0) }
        filteredModels = filteredModels.filter { !all_AppleTVs.contains($0) }
        filteredModels = filteredModels.filter { !all_AppleWatch.contains($0) }
        filteredModels = filteredModels.filter { !all_HomePods.contains($0) }
        filteredModels = filteredModels.filter { !all_iPads.contains($0) }
        filteredModels = filteredModels.filter { !all_iPhone.contains($0) }
        filteredModels = filteredModels.filter { !all_iPodTouch.contains($0) }
        filteredModels = filteredModels.filter { !all_isMacBookAir.contains($0) }
        filteredModels = filteredModels.filter { !all_isMacBook.contains($0) }
        filteredModels = filteredModels.filter { !all_isMacBookPro.contains($0) }
        filteredModels = filteredModels.filter { !all_isMacMini.contains($0) }
        filteredModels = filteredModels.filter { !all_iMac.contains($0) }
        filteredModels = filteredModels.filter { !all_MacPro.contains($0) }

        XCTAssertTrue(filteredModels.elementsEqual([Defines.Device.Model.unknown]),
                      "All models should have been filtered. There's probably a model that isn't covered by 'is_{ModelName}' boolean variables. \nFiltered models: \(filteredModels)")

        let allCompiledModels = [
            all_AirPods,
            all_AppleTVs,
            all_AppleWatch,
            all_HomePods,
            all_iPads,
            all_iPhone,
            all_iPodTouch,
            all_isMacBookAir,
            all_isMacBook,
            all_isMacBookPro,
            all_isMacMini,
            all_iMac,
            all_MacPro
        ]

        XCTAssertTrue(all_AirPods.doesNotContainAnyElementsIn(allCompiledModels.removing(all_AirPods)),
                      "The all_AirPods array shouldn't have any elements in all the other screen arrays\n - all_AirPods: \(all_AirPods)\n - Other arrays: \(allCompiledModels.removing(all_AirPods))")
        XCTAssertTrue(all_AppleTVs.doesNotContainAnyElementsIn(allCompiledModels.removing(all_AppleTVs)),
                      "The all_AppleTVs array shouldn't have any elements in all the other screen arrays\n - all_AppleTVs: \(all_AppleTVs)\n - Other arrays: \(allCompiledModels.removing(all_AppleTVs))")
        XCTAssertTrue(all_AppleWatch.doesNotContainAnyElementsIn(allCompiledModels.removing(all_AppleWatch)),
                      "The all_AppleWatch array shouldn't have any elements in all the other screen arrays\n - all_AppleWatch: \(all_AppleWatch)\n - Other arrays: \(allCompiledModels.removing(all_AppleWatch))")
        XCTAssertTrue(all_HomePods.doesNotContainAnyElementsIn(allCompiledModels.removing(all_HomePods)),
                      "The all_HomePods array shouldn't have any elements in all the other screen arrays\n - all_HomePods: \(all_HomePods)\n - Other arrays: \(allCompiledModels.removing(all_HomePods))")
        XCTAssertTrue(all_iPads.doesNotContainAnyElementsIn(allCompiledModels.removing(all_iPads)),
                      "The all_iPads array shouldn't have any elements in all the other screen arrays\n - all_iPads: \(all_iPads)\n - Other arrays: \(allCompiledModels.removing(all_iPads))")
        XCTAssertTrue(all_iPhone.doesNotContainAnyElementsIn(allCompiledModels.removing(all_iPhone)),
                      "The all_iPhone array shouldn't have any elements in all the other screen arrays\n - all_iPhone: \(all_iPhone)\n - Other arrays: \(allCompiledModels.removing(all_iPhone))")
        XCTAssertTrue(all_iPodTouch.doesNotContainAnyElementsIn(allCompiledModels.removing(all_iPodTouch)),
                      "The all_iPodTouch array shouldn't have any elements in all the other screen arrays\n - all_iPodTouch: \(all_iPodTouch)\n - Other arrays: \(allCompiledModels.removing(all_iPodTouch))")
        XCTAssertTrue(all_isMacBookAir.doesNotContainAnyElementsIn(allCompiledModels.removing(all_isMacBookAir)),
                      "The all_isMacBookAir array shouldn't have any elements in all the other screen arrays\n - all_isMacBookAir: \(all_isMacBookAir)\n - Other arrays: \(allCompiledModels.removing(all_isMacBookAir))")
        XCTAssertTrue(all_isMacBook.doesNotContainAnyElementsIn(allCompiledModels.removing(all_isMacBook)),
                      "The all_isMacBook array shouldn't have any elements in all the other screen arrays\n - all_isMacBook: \(all_isMacBook)\n - Other arrays: \(allCompiledModels.removing(all_isMacBook))")
        XCTAssertTrue(all_isMacBookPro.doesNotContainAnyElementsIn(allCompiledModels.removing(all_isMacBookPro)),
                      "The all_isMacBookPro array shouldn't have any elements in all the other screen arrays\n - all_isMacBookPro: \(all_isMacBookPro)\n - Other arrays: \(allCompiledModels.removing(all_isMacBookPro))")
        XCTAssertTrue(all_isMacMini.doesNotContainAnyElementsIn(allCompiledModels.removing(all_isMacMini)),
                      "The all_isMacMini array shouldn't have any elements in all the other screen arrays\n - all_isMacMini: \(all_isMacMini)\n - Other arrays: \(allCompiledModels.removing(all_isMacMini))")
        XCTAssertTrue(all_iMac.doesNotContainAnyElementsIn(allCompiledModels.removing(all_iMac)),
                      "The all_iMac array shouldn't have any elements in all the other screen arrays\n - all_iMac: \(all_iMac)\n - Other arrays: \(allCompiledModels.removing(all_iMac))")
        XCTAssertTrue(all_MacPro.doesNotContainAnyElementsIn(allCompiledModels.removing(all_MacPro)),
                      "The all_MacPro array shouldn't have any elements in all the other screen arrays\n - all_MacPro: \(all_MacPro)\n - Other arrays: \(allCompiledModels.removing(all_MacPro))")
    }

    func testUnknown() {
        XCTAssertEqual(Defines.Device.isUnknown, false, "The device should never be unknown")

        let unknown = Defines.Device.Model(rawValue: "")!
        XCTAssertTrue(unknown.isUnknown, "An Unknown Model should respond true to 'isUnkown'")

        let unknowns = makeAllModels().compacted { $0.isUnknown ? $0 : nil }
        XCTAssertEqual(unknowns.count, 1, "There should only be one unknown")
    }

    func testAirPods() {
        let modelName = "AirPods"
        let keyPath = "isAirPods"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isAirPods ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testHomePod() {
        let modelName = "AudioAccessory"
        let keyPath = "isHomePod"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isHomePod ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testAppleTV() {
        let modelName = "AppleTV"
        let keyPath = "isAppleTV"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isAppleTV ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testAppleWatch() {
        let modelName = "Watch"
        let keyPath = "isAppleWatch"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isAppleWatch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testiPad() {
        let modelName = "iPad"
        var keyPath = "isiPad"

        let allModels = makeAllModels()
        var collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        var trueCollection = allModels.compacted { $0.isiPad ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")

        keyPath = "isiPadRegular"
        collection = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
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
                return $0
            default:
                return nil
            }
        }
        trueCollection = allModels.compacted { $0.isiPadRegular ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")

        keyPath = "isiPadAir"
        collection = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPadAir,
                 .iPadAir_GSM,
                 .iPadAir_TD_LTE,
                 .iPadAir_2,
                 .iPadAir_2_Cellular:
                return $0
            default:
                return nil
            }
        }
        trueCollection = allModels.compacted { $0.isiPadAir ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")

        keyPath = "isiPadPro"
        collection = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPadPro_12_9_Inch,
                 .iPadPro_12_9_Inch_Cellular,
                 .iPadPro_9_7_Inch,
                 .iPadPro_9_7_Inch_Cellular,
                 .iPadPro_12_9_Inch_2ndGeneration,
                 .iPadPro_12_9_Inch_2ndGeneration_Cellular,
                 .iPadPro_10_5_Inch,
                 .iPadPro_10_5_Inch_Cellular,
                 .iPadPro_11_Inch,
                 .iPadPro_11_Inch_1TB,
                 .iPadPro_11_Inch_Cellular,
                 .iPadPro_11_Inch_1TB_Cellular,
                 .iPadPro_12_9_Inch_3rdGeneration,
                 .iPadPro_12_9_Inch_3rdGeneration_Cellular,
                 .iPadPro_12_9_Inch_3rdGeneration_1TB,
                 .iPadPro_12_9_Inch_3rdGeneration_1TB_Cellular:
                return $0
            default:
                return nil
            }
        }
        trueCollection = allModels.compacted { $0.isiPadPro ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")

        keyPath = "isiPadMini"
        collection = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
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
                return $0
            default:
                return nil
            }
        }
        trueCollection = allModels.compacted { $0.isiPadMini ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func testiPhone() {
        let modelName = "iPhone"
        var keyPath = "isiPhone"

        let allModels = makeAllModels()
        var collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        var trueCollection = allModels.compacted { $0.isiPhone ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")

        keyPath = "isiPhoneS"
        collection = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPhone4s,
                 .iPhone5s_NorthAmerica_Japan,
                 .iPhone5s_Europe_Asia,
                 .iPhone6s,
                 .iPhone6sPlus:
                return $0
            default:
                return nil
            }
        }
        trueCollection = allModels.compacted { $0.isiPhoneS ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")

        keyPath = "isiPhoneC"
        collection = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPhone5c_NorthAmerica_Japan,
                 .iPhone5c_Europe_Asia:
                return $0
            default:
                return nil
            }
        }
        trueCollection = allModels.compacted { $0.isiPhoneC ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")

        keyPath = "isiPhonePlus"
        collection = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPhone6Plus,
                 .iPhone6sPlus,
                 .iPhone7Plus_CDMA,
                 .iPhone7Plus_Global,
                 .iPhone8Plus,
                 .iPhone8Plus_2:
                return $0
            default:
                return nil
            }
        }
        trueCollection = allModels.compacted { $0.isiPhonePlus ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")

        keyPath = "isiPhoneSE"
        collection = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPhoneSE:
                return $0
            default:
                return nil
            }
        }
        trueCollection = allModels.compacted { $0.isiPhoneSE ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")

        keyPath = "isiPhoneX"
        collection = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPhoneX,
                 .iPhoneX_2,
                 .iPhoneXR,
                 .iPhoneXS,
                 .iPhoneXS_Max,
                 .iPhoneXS_Max_China:
                return $0
            default:
                return nil
            }
        }
        trueCollection = allModels.compacted { $0.isiPhoneX ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")

        keyPath = "isiPhoneMax"
        collection = allModels.compacted {
            guard $0.rawValue.contains(modelName) else { return nil }
            switch $0 {
            case .iPhoneXS_Max,
                 .iPhoneXS_Max_China:
                return $0
            default:
                return nil
            }
        }
        trueCollection = allModels.compacted { $0.isiPhoneMax ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' is not correct")
    }

    func testiPodTouch() {
        let modelName = "iPod"
        let keyPath = "isiPodTouch"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isiPodTouch ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testMac() {
        let modelName = "Mac"
        let keyPath = "isMac"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isMac ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testMacBookAir() {
        let modelName = "MacBookAir"
        let keyPath = "isMacBookAir"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isMacBookAir ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testMacBook() {
        let modelName = "MacBook"
        let keyPath = "isMacBook"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName, butNotContaining: ["Pro", "Air"]) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isMacBook ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testMacBookPro() {
        let modelName = "MacBookPro"
        let keyPath = "isMacBookPro"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isMacBookPro ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testMacMini() {
        let modelName = "Macmini"
        let keyPath = "isMacMini"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isMacMini ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testiMac() {
        let modelName = "iMac"
        let keyPath = "isiMac"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isiMac ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }

    func testMacPro() {
        let modelName = "MacPro"
        let keyPath = "isMacPro"

        let allModels = makeAllModels()
        let collection = allModels.compacted { $0.rawValue.contains(modelName) ? $0 : nil }
        let trueCollection = allModels.compacted { $0.isMacPro ? $0 : nil }
        XCTAssertTrue(collection.elementsEqual(trueCollection), "The number of \(modelName) responding true to '\(keyPath)' should be equal to the devices called '\(modelName)'")
    }
}
