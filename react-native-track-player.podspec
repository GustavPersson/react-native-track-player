require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-track-player"
  s.version      = package["version"]
  s.summary      = package['description']
  s.license      = package['license']
  
  s.author       = "David Chavez"
  s.homepage     = package['repository']['url']
  s.platform     = :ios, "10.0"
  
  s.source       = { :git => package['repository']['url'], :tag => "v#{s.version}" }
  s.source_files  = "ios/RNTrackPlayer/*.{h,m,swift}",
    "ios/RNTrackPlayer/Models/**/*.{h,m,swift}",
    "ios/RNTrackPlayer/Support/**/*.{h,m,swift}",
    "ios/RNTrackPlayer/Vendor/AudioPlayer/SwiftAudio/**/*.{h,m,swift}"
  
  s.swift_version = "5.0"
  
  s.dependency "React"
end
