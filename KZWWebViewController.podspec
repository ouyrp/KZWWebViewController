#
# Be sure to run `pod lib lint KZWWebViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KZWWebViewController'
  s.version          = '2.0.1'
  s.summary          = 'A short description of KZWWebViewController.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ouyrp/KZWWebViewController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ouyrp' => 'rp.ouyang001@bkjk.com' }
  s.source           = { :git => 'https://github.com/ouyrp/KZWWebViewController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'KZWWebViewController/Classes/**/*'
  s.resource_bundles = {
      'KZWWebViewController' => 'KZWWebViewController/Assets/*.xcassets'
  }
  s.frameworks = 'WebKit','UIKit'
  s.dependency 'KZWUI'
  s.dependency 'FMWebViewJavascriptBridge'

end
