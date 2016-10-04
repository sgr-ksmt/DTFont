Pod::Spec.new do |s|
  s.name             = "DTFont"
  s.version          = "0.2.0"
  s.summary          = "DynamicTypeFont helper. Easy creation, custom font etc."
  s.homepage         = "https://github.com/sgr-ksmt/DTFont"
  # s.screenshots     = ""
  s.license          = 'MIT'
  s.author           = { "Suguru Kishimoto" => "melodydance.k.s@gmail.com" }
  s.source           = { :git => "https://github.com/sgr-ksmt/DTFont.git", :tag => s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true
  s.source_files     = "DTFont/**/*"
  s.frameworks   = 'WebKit'
end
