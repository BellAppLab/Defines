# Defines

A small collection of Swift structs to replace #define statements in Obj-C.

## Usage

```swift
if Defines.Device.IsSimulator {
    //Don't ask permission to send push notifications
}
```

## Requirements

* iOS 8+
* Swift 3.0

## Installation

### Cocoapods

Because of [this](http://stackoverflow.com/questions/39637123/cocoapods-app-xcworkspace-does-not-exists), I've dropped support for Cocoapods on this repo. I cannot have production code rely on a dependency manager that breaks this badly. 

### Git Submodules

**Why submodules, you ask?**

Following [this thread](http://stackoverflow.com/questions/31080284/adding-several-pods-increases-ios-app-launch-time-by-10-seconds#31573908) and other similar to it, and given that Cocoapods only works with Swift by adding the use_frameworks! directive, there's a strong case for not bloating the app up with too many frameworks. Although git submodules are a bit trickier to work with, the burden of adding dependencies should weigh on the developer, not on the user. :wink:

To install Defines using git submodules:

```
cd toYourProjectsFolder
git submodule add --name Defines https://github.com/BellAppLab/Defines.git
```

Navigate to the new Defines folder and drag the `Source` folder into your Xcode project.

## Author

Bell App Lab, apps@bellapplab.com

## License

Defines is available under the MIT license. See the LICENSE file for more info.
