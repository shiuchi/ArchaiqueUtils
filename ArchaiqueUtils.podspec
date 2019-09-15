
Pod::Spec.new do |s|
  s.name         = "ArchaiqueUtils"
  s.version      = "0.0.5"
  s.summary      = "ArchaiqueUtils."
  s.description  =  "swift utils for shiuchi"
  s.swift_version = '5.0'
  s.homepage     = "https://github.com/shiuchi/ArchaiqueUtils"
  s.license      = "MIT"
  s.author             = { "shiuchi" => "s.shiuchi[at]gmail.com" }
  s.platform     = :ios
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/shiuchi/ArchaiqueUtils.git" , :tag => s.version.to_s}
  s.source_files  = "ArchaiqueUtils/Classes", "ArchaiqueUtils/Classes/**/*"
  s.requires_arc = true
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '(inherited)′,′LIBRARYSEARCHPATHS′=>′(inherited)', 'OTHER_LDFLAGS' => '$(inherited)' }
end
