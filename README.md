# Defines [![Version](https://img.shields.io/badge/Version-1.0.2-black.svg?style=flat)](#installation) [![License](https://img.shields.io/cocoapods/l/Defines.svg?style=flat)](#license)

[![Platforms](https://img.shields.io/badge/Platforms-iOS|watchOS|tvOS|macOS-brightgreen.svg?style=flat)](#installation)
[![Swift support](https://img.shields.io/badge/Swift-3.3%20%7C%204.1%20%7C%204.2-red.svg?style=flat)](#swift-versions-support)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Defines.svg?style=flat&label=CocoaPods)](https://cocoapods.org/pods/Defines)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Swift Package Manager compatible](https://img.shields.io/badge/SPM-compatible-orange.svg?style=flat)](https://github.com/apple/swift-package-manager)
[![Twitter](https://img.shields.io/badge/Twitter-@BellAppLab-blue.svg?style=flat)](http://twitter.com/BellAppLab)

![Defines](./Images/defines.png)

A collection of runtime checks written in Swift.

In other words, simply do this:

```swift
if Defines.Device.isSimulator {
    //Don't ask permission to send push notifications
}
```

We all know the Apple Way of Doing Things ™, right? Instead of checking for a device, you check for a capability. For instance, instead of checking if a device is an iPod touch and therefore doesn't have a GPS, you check if `CoreLocation` is available. Or instead of checking for a device's screen size all the time, we should rely on Auto Layout's size classes and all that. 

I get it. 

But sometimes you just have to have that flag somewhere. `Compact` and `Regular` do not capture how preposterous the iPad Pro 12.9" screen's real estate is. So maybe you want to present a little bit more content there. Or maybe you just don't want to ask permissions for push notifications on the Simulator. We've all been there.

So just `import Defines` and get on with your life. 

## Note

Please note that `Defines` does **not** provide compile-time safety checks. It is merely a collection of static booleans for runtime checks. 

In other words, doing this:

```swift
let iOS9 = Defines.Version(versionString: "9.0")
if Defines.OS.isiOS && Defines.OS.version = iOS9 {
    //execute code only available on iOS9
}
```

... will **not** silence any compiler warnings. 

For that, take a look at [Checking API Availability](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html#ID523) and  [Conditional Compilation Block](https://docs.swift.org/swift-book/ReferenceManual/Statements.html#ID539).

## Usage

Just so you get the gist of it.

- `Defines`: main point of interaction with this module.
    - `Device`
        - `currentModel` : the device model running your code.
        - `isSimulator`
        - `Model`: enumeration of model identifiers for all the relevant Apple products since 2008.
        - `isAppleTV`
        - `isAppleWatch`
        - `isiPad`
        - `isiPhone`
        - `isiPod`
        - `isMac`
        - much more
    - `Screen`: information about the current screen available to your app.
        - `bounds`: the screen's current bound rect.
        - `currentWidth`
        - `currentHeight`
        - `maxLength`: the greater between width and height.
        - `minLength`: the lesser between width and height.
        - much more
    - `OS`: information about the OS running your app.
        - `version`: describes the version of the OS running your app and makes it easy to compare them.
    - `App`: your app, mainly reading from Info.plist.
        - `name(forClass:)`:  find your app's name.
        - `version(forClass:)`: find your app's version.
    - `Version`: defines a software version in the format **major.minor.patch (build)**.
- `Bundle`:
    - `id(forClass:)`: find your app's bundle id.

## Specs

* iOS 9+
* watchOS 3+
* tvOS 9+
* macOS 10.11+
* Swift 3.3+

## Installation

### Cocoapods

```ruby
pod 'Defines', '~> 1.0'
```

Then `import Defines` where needed.

### Carthage

```swift
github "BellAppLab/Defines" ~> 1.0
```

Then `import Defines` where needed.

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/BellAppLab/Defines", from: "1.0")
]
```

Then `import Defines` where needed.

### Git Submodules

```shell
cd toYourProjectsFolder
git submodule add -b submodule --name Defines https://github.com/BellAppLab/Defines.git
```

Then drag the `Definess` folder into your Xcode project.

## Author

Bell App Lab, apps@bellapplab.com

### Credits

[Logo image](https://thenounproject.com/search/?q=define&i=659840#) by [Sumana Chamrunworakiat](https://thenounproject.com/windy.windysky) from [The Noun Project](https://thenounproject.com/)

## License

Defines is available under the MIT license. See the LICENSE file for more info.
