Pod::Spec.new do |s|
  s.name                      = "StreemMapper"
  s.version                   = "6.1.1"
  s.summary                   = "A JSON deserialization library for Swift"
  s.homepage                  = "https://github.com/JustaLab/mapper"
  s.license                   = "Apache License, Version 2.0"
  s.author                    = {"Keith Smiley" => "keithbsmiley@gmail.com", "Emilien Stremsdoerfer" => "emstre@gmail.com" }
  s.ios.deployment_target     = "8.0"
  s.osx.deployment_target     = "10.10"
  s.tvos.deployment_target    = "9.0"
  s.watchos.deployment_target = "2.0"
  s.source                    = { :git => "https://github.com/JustaLab/mapper.git", :tag => s.version }
  s.requires_arc              = true
  s.source_files              = "Sources/*.swift"
  s.module_name               = "StreemMapper"
end
