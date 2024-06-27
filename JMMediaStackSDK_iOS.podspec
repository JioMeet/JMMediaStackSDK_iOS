specVersion = '1.1.1'
frameworkSourceUrl = 'https://storage.googleapis.com/cpass-sdk/libs/iOS/public/JMMedia/v_1_0_0_alpha_3/JMMediaStackSDK_1_0_0_alpha_3.zip'

specAuthors = {
    'Rohit Kumar' => 'rohit41.kumar@ril.com',
    'Apparao Mulpuri' => 'apparao.mulpuri@ril.com',
    'Umesh Chandak' => 'umesh.chandak@ril.com',
    'Tarun Kumar' => 'tarun58.kumar@ril.com',
    'Mani Baratam' => 'mani.baratam@ril.com',
    'Shivam Tripathi' => 'shivam.tripathi@ril.com',
    'Ramakrishna M' => 'ramakrishna1.m@ril.com',
    'Harsh Surati' => 'harsh1.surati@ril.com',
    'Onkar Dhanlobhe' => 'onkar.dhanlobhe@ril.com'
}

Pod::Spec.new do |spec|

  spec.name         = 'JMMediaStackSDK_iOS'
  spec.version      = specVersion
  spec.summary      = 'JioMeet iOS RTC Media Stack SDK'
  spec.description  = 'iOS library for JioMeet A/V communication and data channel service.'
  spec.homepage     = 'https://jiomeetpro.jio.com'
  spec.license      = { :type => 'Copyright', :text => 'COPYRIGHT 2022 JIO PLATFORMS LIMITED. ALL RIGHTS RESERVED.\n' }
  spec.authors       = specAuthors
  spec.platform = :ios
  spec.ios.deployment_target = '12.0'
  #spec.platform     = :ios, '12'
  spec.swift_versions = ['5']
  spec.source       = { :git => 'https://github.com/JioMeet/JMMediaStackSDK_iOS.git' }
  spec.source_files = "Framework/**/*.{h,m,swift}"
  spec.vendored_frameworks = 'XCFrameworks/JMMediaStackSDK.xcframework'
  spec.ios.framework  = 'UIKit'
  spec.frameworks = "AVFoundation", "AudioToolbox", "CoreAudio", "CoreMedia", "CoreVideo"
  spec.dependency 'JMMediaWebRtc_iOS', '1.0.0'
end
