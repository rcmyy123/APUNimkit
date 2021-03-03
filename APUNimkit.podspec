Pod::Spec.new do |s|
  s.name             = 'APUNimkit'
  s.version          = '0.1.0'
  s.summary          = '阿铺科技+云信UI库'

  s.homepage         = 'https://github.com/rcmyy123/APUNimkit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rcmyy123' => '1805115580@qq.com' }
  s.source           = { :git => 'https://github.com/rcmyy123/APUNimkit.git', :tag => s.version.to_s }


  s.platform = :ios, '9.0'

  s.frameworks = 'CoreText', 'SystemConfiguration', 'AVFoundation', 'CoreTelephony', 'AudioToolbox', 'CoreMedia' , 'VideoToolbox' 
  s.libraries  = 'sqlite3.0', 'z', 'c++'
  
  s.subspec 'Lite' do |cs|
    cs.source_files  = 'APUNimkit/Classes/**/*.{h,m}'
    cs.dependency 'APUNimkit/Core'
    cs.dependency 'NIMSDK_LITE', '~> 8.0.0'
  end
  
  s.subspec 'Core' do |os|     
    os.resource_bundles = {
      'APUNimkit' => ['APUNimkit/Assets/*']
    }  
    os.dependency 'SDWebImage', '~> 5.0.6'
    os.dependency 'FLAnimatedImage', '~> 1.0.12'
    os.dependency 'Toast', '~> 3.1.0'         
    os.dependency 'TZImagePickerController', '~> 3.2.9'  
    os.dependency 'M80AttributedLabel', '~> 1.9.9' 
    os.dependency 'YYImage', '~> 1.0.4'
    os.dependency 'YYImage/WebP', '~> 1.0.4'       	      
  end
  
  s.default_subspec = 'Lite'
end
