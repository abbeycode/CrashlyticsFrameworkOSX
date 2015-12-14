Pod::Spec.new do |s|
  s.name         = "CrashlyticsFrameworkOSX"
  s.deprecated_in_favor_of = "Crashlytics"
  s.version      = "3.0.8.1"
  s.summary      = "The most powerful, yet lightest weight crash reporting solution for iOS and Android developers. | Crashlytics"
  s.homepage     = "http://crashlytics.com"
  s.license      = {
    :type => 'Copyright',
    :file => 'LICENSE'
  }
  s.author       = 'Crashlytics'
  s.source       = { :git => "https://github.com/abbeycode/CrashlyticsFrameworkOSX.git", :tag => "3.0.8" }
  s.platform     = :osx, '10.6'
  s.requires_arc = true
  s.osx.source_files = 'Crashlytics.framework/Versions/A/Headers/*.h'
  s.osx.vendored_frameworks = ['Crashlytics.framework',
                               'Fabric.framework']
  s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited)' }
  s.preserve_paths = ['Crashlytics.framework',
                      'Fabric.framework']
end
