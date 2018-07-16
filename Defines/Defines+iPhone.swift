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
     Returns true if the model is an iPhone.
     */
    public var isiPhone: Bool {
        switch self {
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
     Returns true if the model is an iPhone S (eg. iPhone 4s, iPhone 5s and iPhone 6s).
     */
    public var isiPhoneS: Bool {
        switch self {
        case .iPhone4s,
             .iPhone5s_NorthAmerica_Japan,
             .iPhone5s_Europe_Asia,
             .iPhone6s,
             .iPhone6sPlus:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the model is an iPhone C (eg. iPhone 5c).
     */
    public var isiPhoneC: Bool {
        switch self {
        case .iPhone5c_NorthAmerica_Japan,
             .iPhone5c_Europe_Asia:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the model is an iPhone Plus (eg. iPhone 6 Plus, iPhone 7 Plus and iPhone 8 Plus).
     */
    public var isiPhonePlus: Bool {
        switch self {
        case .iPhone6Plus,
             .iPhone6sPlus,
             .iPhone7Plus_CDMA,
             .iPhone7Plus_Global,
             .iPhone8Plus,
             .iPhone8Plus_2:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the model is an iPhone SE (eg. iPhone SE).
     */
    public var isiPhoneSE: Bool {
        switch self {
        case .iPhoneSE:
            return true
        default:
            return false
        }
    }

    /**
     Returns true if the model is an iPhone X (eg. iPhone X).
     */
    public var isiPhoneX: Bool {
        switch self {
        case .iPhoneX,
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
     Returns true if the model is an iPhone.
     */
    public static let isiPhone: Bool = {
        return Defines.Device.currentModel.isiPhone
    }()

    /**
     Returns true if the model is an iPhone S (eg. iPhone 4s, iPhone 5s and iPhone 6s).
     */
    public static let isiPhoneS: Bool = {
        return Defines.Device.currentModel.isiPhoneS
    }()

    /**
     Returns true if the model is an iPhone C (eg. iPhone 5c).
     */
    public static let isiPhoneC: Bool = {
        return Defines.Device.currentModel.isiPhoneC
    }()

    /**
     Returns true if the model is an iPhone Plus (eg. iPhone 6 Plus, iPhone 7 Plus and iPhone 8 Plus).
     */
    public static let isiPhonePlus: Bool = {
        return Defines.Device.currentModel.isiPhonePlus
    }()

    /**
     Returns true if the model is an iPhone SE (eg. iPhone SE).
     */
    public static let isiPhoneSE: Bool = {
        return Defines.Device.currentModel.isiPhoneSE
    }()

    /**
     Returns true if the model is an iPhone X (eg. iPhone X).
     */
    public static let isiPhoneX: Bool = {
        return Defines.Device.currentModel.isiPhoneX
    }()
}
