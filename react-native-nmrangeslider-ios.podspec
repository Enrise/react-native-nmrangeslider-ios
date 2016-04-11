Pod::Spec.new do |s|
  s.name             = "react-native-nmrangeslider-ios"
  s.version          = "1.3.0"
  s.summary          = "Native iOS multi slider component for React Native with two markers based on https://github.com/Enrise/NMRangeSlider."
  s.homepage         = "https://github.com/Enrise/react-native-nmrangeslider-ios"
  s.license          = "MIT"
  s.author           = { "Enrise BV" => "npm@enrise.com" }
  s.source           = { :git => "https://github.com/Enrise/react-native-nmrangeslider-ios", :tag => s.version }

  s.platform         = :ios, "7.0"
  s.requires_arc     = true

  s.source_files     = "NMRangeSliderManager/*.{h,m}", "NMRangeSlider/*.{h,m}"
  s.resources        = "NMRangeSlider/*.xcassets"

  s.dependency "React"
end
