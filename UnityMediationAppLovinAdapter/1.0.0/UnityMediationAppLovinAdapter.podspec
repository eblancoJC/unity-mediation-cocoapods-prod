  Pod::Spec.new do |spec|  
    spec.name         = "UnityMediationAppLovinAdapter"
    spec.version      = '1.0.0'
    spec.summary      = "UnityMediationAppLovinAdapter for UnityMediationSdk"
    spec.description  = "UnityMediationAppLovinAdapter Framework for loading and showing ads in the UnityMediationSdk."
    spec.homepage     = "https://github.com/Unity-Technologies/mz-mediation-sdk-ios"
    spec.license        = { :type => 'Unity Monetization Services', :text => <<-LICENSE 

Unity Monetization copyright © 2020 Unity Technologies SF
Your use of the Unity Technologies SF ("Unity') services known as "Unity Monetization" are subject to the Unity Monetization Services Terms of Service linked to and copied immediately below.
[Unity Monetization Services TOS](https://unity3d.com/legal/monetization-services-terms-of-service)
Your use of Unity Monetization constitutes your acceptance of such terms. Unless expressly provided otherwise, the software under this license is made available strictly on an "AS IS" BASIS WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED. Please review the license for details on these and other terms and conditions.

      LICENSE
    }
    spec.author             = { "Shawn Hampton" => "shawnh@unity3d.com" }
    spec.platform     = :ios, "9.0"
    spec.source               = { :http => 'https://unity3ddist.jfrog.io/artifactory/unity-mediation-generic-prod-local/UnityMediationAppLovinAdapter/1.0.0/UnityMediationAppLovinAdapter.xcframework.zip' }
    spec.vendored_frameworks  = "UnityMediationAppLovinAdapter.xcframework"
    spec.dependency "UnityMediationSdk", ">= 0.5"
    spec.dependency "UnityMediationAdapter", "~> 3.0"
    spec.dependency "AppLovinSDK", "= 11.7.1"
    spec.xcconfig = {
      "OTHER_LDFLAGS" => "-ObjC",
      "VALID_ARCHS" => "arm64 arm64e armv7 armv7s x86_64",
      "VALID_ARCHS[sdk=iphoneos*]" => "arm64 arm64e armv7 armv7s",
      "VALID_ARCHS[sdk=iphonesimulator*]" => "x86_64"
    }
  end
