import UIKit

public struct Defines
{
    public struct Screen
    {
        public static let width = UIScreen.main.bounds.maxX
        public static let height = UIScreen.main.bounds.maxY
        public static let maxLength = max(Screen.width, Screen.height)
        public static let minLength = min(Screen.width, Screen.height)
        public static let isRetina = UIScreen.main.scale > 1
    }
    
    public struct Device
    {
        public static let isiPad = UIDevice.current.userInterfaceIdiom == .pad
        public static let isiPhone4OrLess =  !isiPad && Screen.maxLength < 568.0
        public static let isiPhone5orSE = !isiPad && Screen.maxLength == 568.0
        public static let isiPhone6or7 = !isiPad && Screen.maxLength == 667.0
        public static let isiPhone6pOr7p = !isiPad && Screen.maxLength == 736.0
        #if (arch(i386) || arch(x86_64)) && (os(iOS) || os(watchOS) || os(tvOS))
        public static let isSimulator = true
        #else
        public static let isSimulator = false
        #endif
        
    }
    
    public struct Version
    {
        public static let isiOS7 = (UIDevice.current.systemVersion as NSString).doubleValue < 8.0
        public static let isiOS8 = (UIDevice.current.systemVersion as NSString).doubleValue < 9.0
        public static let isiOS9 = (UIDevice.current.systemVersion as NSString).doubleValue < 10.0
        public static let isiOS10 = (UIDevice.current.systemVersion as NSString).doubleValue < 11.0
    }
    
    public struct App
    {
        public static let isScaledUp = Device.isiPhone6pOr7p && UIScreen.main.nativeScale > UIScreen.main.scale
        public static func bundleId() -> String {
            return Bundle.main.bundleIdentifier!
        }
        public static let name = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as! String
    }
}
