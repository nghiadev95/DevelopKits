#
# Be sure to run `pod lib lint DevelopKits.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DevelopKits'
  s.version          = '1.0.5'
  s.summary          = 'ToolKits for iOS Development'
  s.description      = <<-DESC
Collection of toolkits  for iOS Development.
                       DESC
  s.homepage         = 'https://github.com/nghiadev95/DevelopKits'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'quangnghiadev' => 'quangnghiadev@gmail.com' }
  s.source           = { :git => 'https://github.com/nghiadev95/DevelopKits.git', :tag => s.version.to_s }
  s.platform = :ios
  s.ios.deployment_target = '11.0'
  s.swift_version = '5.1'
  s.dependency "Then", ">= 2.7.0"
  s.dependency "SwifterSwift", ">= 5.2.0"
end
