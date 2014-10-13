Pod::Spec.new do |s|
  s.name         = "CrashlyticsFrameworkOSX"
  s.version      = "2.1.2"
  s.summary      = "The most powerful, yet lightest weight crash reporting solution for iOS and Android developers. | Crashlytics"
  s.homepage     = "http://crashlytics.com"
  s.license      = {
    :type => 'Copyright',
    :file => 'LICENSE' # Copied from http://try.crashlytics.com/terms/terms-of-service.pdf
  }
  s.author       = 'Crashlytics'
  s.source       = { :git => "https://github.com/abbeycode/CrashlyticsFrameworkOSX.git", :tag => s.version.to_s }
  s.platform     = :osx, '10.9'
  s.requires_arc = true
  s.osx.resources = 'Crashlytics.framework'
  s.osx.public_header_files = 'Crashlytics.framework/Versions/A/Headers/*.h'
  s.osx.vendored_frameworks = 'Crashlytics.framework'
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
  s.preserve_paths = 'Crashlytics.framework'
end
