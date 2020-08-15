#
# Be sure to run `pod lib lint iDevKits.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iDevKits'
  s.version          = '1.0.3'
  s.summary          = 'ToolKits for iOS Development'
  s.description      = <<-DESC
Collection of toolkits  for iOS Development.
                       DESC
  s.homepage         = 'https://github.com/nghiadev95/iDevKits'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'quangnghiadev' => 'quangnghiadev@gmail.com' }
  s.source           = { :git => 'https://github.com/nghiadev95/iDevKits.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.1'

  s.subspec 'SafeDictionary' do |ss|
    ss.source_files = 'Sources/SafeDictionary/*.swift'
  end

  s.subspec 'UserDefault' do |ss|
    ss.source_files = 'Sources/UserDefault/*.swift'
  end
  
  s.subspec 'Foundation' do |ss|
    ss.source_files = 'Sources/Foundation/*.swift'
  end

  s.subspec 'UIKit' do |ss|
    ss.source_files = 'Sources/UIKit/*.swift'
  end
end
