import UIKit

public struct Screen
{
    static let Width = UIScreen.mainScreen().bounds.size.width
    static let Height = UIScreen.mainScreen().bounds.size.height
    static let MaxLength = max(Screen.Width, Screen.Height)
    static let MinLength = min(Screen.Width, Screen.Height)
    static let IsRetina = UIScreen.mainScreen().scale > 1
}

public struct Device
{
    static let IsiPad = UIDevice.currentDevice().userInterfaceIdiom == .Pad
    static let IsiPhone4OrLess =  !IsiPad && Screen.MaxLength < 568.0
    static let IsiPhone5 = !IsiPad && Screen.MaxLength == 568.0
    static let IsiPhone6 = !IsiPad && Screen.MaxLength == 667.0
    static let IsiPhone6p = !IsiPad && Screen.MaxLength == 736.0
}

public struct Version
{
    static let IsiOS7 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue < 8.0
    static let IsiOS8 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue < 9.0
    static let IsiOS9 = (UIDevice.currentDevice().systemVersion as NSString).doubleValue < 10.0
}

public struct App
{
    static let IsScaledUp = Device.IsiPhone6p && UIScreen.mainScreen().nativeScale > UIScreen.mainScreen().scale
    static func BundleId() -> String {
        return NSBundle.mainBundle().bundleIdentifier!
    }
    static let Name = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleDisplayName") as! String
}