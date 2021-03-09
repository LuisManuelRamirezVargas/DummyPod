Pod::Spec.new do |s|

  s.platform = :ios
  s.ios.deployment_target = '11.0'
  s.name = "DummyPod"
  s.summary = "DummyPod is a test pod"
  s.requires_arc = true
  
  s.version = "0.5.0"
  
  s.license = { :type => "MIT", :file => "LICENSE" }
  
  s.author = { "Luis Manuel Ramirez Vargas" => "luis.manuel.ramirez.91@gmail.com" }
  
  s.homepage = "https://github.com/LuisManuelRamirezVargas/DummyPod"
  
  s.source = { :git => "https://github.com/LuisManuelRamirezVargas/DummyPod.git", 
               :tag => "#{s.version}" }

  s.source_files = "DummyPod/**/*.{swift}"

  s.swift_version = "4.2"
  
end