Pod::Spec.new do |s|

  s.name                = "Defines"
  s.version             = "1.0.0"
  s.summary             = "A collection of runtime checks written in Swift."
  s.screenshot          = "https://github.com/BellAppLab/Defines/raw/master/Images/defines.png"

  s.description         = <<-DESC
A collection of runtime checks written in Swift.

Simply check if `Defines.Device.isSimulator` and get on with your life.
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
