# Defines [![Version](https://img.shields.io/badge/Version-1.0-black.svg?style=flat)](#installation) [![License](https://img.shields.io/cocoapods/l/Defines.svg?style=flat)](#license)

[![Platforms](https://img.shields.io/badge/Platforms-iOS|watchOS|tvOS|macOS-brightgreen.svg?style=flat)](#installation)
[![Swift support](https://img.shields.io/badge/Swift-3.3%20%7C%204.1-red.svg?style=flat)](#swift-versions-support)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Defines.svg?style=flat&label=CocoaPods)](https://cocoapods.org/pods/Defines)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Twitter](https://img.shields.io/badge/Twitter-@BellAppLab-blue.svg?style=flat)](http://twitter.com/BellAppLab)

![Defines](./Images/defines.png)

A small collection of Swift structs to replace #define statements in Obj-C.

_v0.5.1_

## Usage

```swift
if Defines.Device.isSimulator {
    //Don't ask permission to send push notifications
}
```

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

[Logo image](https://thenounproject.com/search/?q=flow&i=1469609#) by [Becris](https://thenounproject.com/Becris) from [The Noun Project](https://thenounproject.com/)

## License

Defines is available under the MIT license. See the LICENSE file for more info.
