Pod::Spec.new do |s|

  s.name                = "Defines"
  s.version             = "1.0.0"
  s.summary             = "A collection of runtime checks written in Swift."
  s.screenshot          = "https://github.com/BellAppLab/Defines/raw/master/Images/defines.png"

  s.description         = <<-DESC
A collection of runtime checks written in Swift.

We all know the Apple Way of Doing Things ™, right? Instead of checking for a device, you check for a capability. For instance, instead of checking if a device is an iPod touch and therefore doesn't have a GPS, you check if `CoreLocation` is available. Or instead of checking for a device's screen size all the time, we should rely on Auto Layout's size classes and all that.

I get it.

But sometimes you just have to have that flag somewhere. `Compact` and `Regular` do not capture how preposterous the iPad Pro 12.9" screen's real estate is. So maybe you want to present a little bit more content there. Or maybe you just don't want to ask permissions for push notifications on the Simulator. We've all been there.

So just `import Defines` and get on with your life.
                   DESC

  s.homepage            = "https://github.com/BellAppLab/Defines"

  s.license             = { :type => "MIT", :file => "LICENSE" }

  s.author              = { "Bell App Lab" => "apps@bellapplab.com" }
  s.social_media_url    = "https://twitter.com/BellAppLab"

  s.ios.deployment_target       = "9.0"
  s.watchos.deployment_target   = "3.0"
  s.tvos.deployment_target      = "9.0"
  s.osx.deployment_target       = "10.11"

  s.module_name         = 'Defines'

  s.source              = { :git => "https://github.com/BellAppLab/Defines.git", :tag => "#{s.version}" }

  s.source_files        = "Sources/Defines"

  s.framework           = "Foundation"
  s.ios.framework       = "UIKit"
  s.watchos.framework   = "WatchKit"
  s.tvos.framework      = "UIKit"
  s.osx.framework       = "AppKit"

end
