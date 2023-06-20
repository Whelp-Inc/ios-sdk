
Pod::Spec.new do |s|
  s.name             = 'WhelpChat'
  s.version          = '0.1.1'
  s.summary          = 'A short description of WhelpChat.'

s.homepage         = 'https://github.com/Whelp-Inc/ios-sdk/src/master/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Rashad Shirizada' => 'rashad.shirizada@gmail.com' }
  s.source           = { :git => 'https://github.com/Whelp-Inc/ios-sdk.git',
  :branch => "master", :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'

  s.source_files = 'WhelpChat/Classes/**/*'
  end
