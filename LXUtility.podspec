
Pod::Spec.new do |s|
  s.name         = "LXUtility"
  s.version      = "0.0.1"
  s.summary      = "A private of LXUtility."
  s.homepage     = "https://github.com/sunshineLixun/LXUtility.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "sunshineLixun" => "1261142605@qq.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/sunshineLixun/LXUtility.git", :tag => s.version.to_s }
  s.source_files = "LXUtility/UIKit/**/*.{h,m}"
  # s.public_header_files = "Classes/**/*.h"
  s.requires_arc = true

end
