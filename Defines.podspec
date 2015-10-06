Pod::Spec.new do |s|
  s.name             = "Defines"
  s.version          = "0.3.0"
  s.summary          = "A small collection of Swift structs to replace #define statements in Obj-C."
  s.homepage         = "https://github.com/BellAppLab/Defines"
  s.license          = 'MIT'
  s.author           = { "Bell App Lab" => "apps@bellapplab.com" }
  s.source           = { :git => "https://github.com/BellAppLab/Defines.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/BellAppLab'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

  s.frameworks = 'UIKit'
end
