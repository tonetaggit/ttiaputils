Pod::Spec.new do |spec|
  spec.name         = "ttiaputils"
  spec.version      = "1.0.0"
  spec.summary      = "Static variant of MyLibrary"
  spec.description  = "Contains static iap framework for integration with other static SDKs."
  spec.homepage     = "https://github.com/tonetaggit/ttiaputils.git"
  spec.license      = { :type => "Proprietary", :file => "LICENSE" }
  spec.author       = { "Tonetag" => "dev@tonetag.com" }
  spec.platform     = :ios, "14.0"
  spec.swift_version = "6.1"
  spec.static_framework = true

  spec.source       = { :git => "https://github.com/tonetaggit/ttiaputils.git", :tag => "#{spec.version}" }

  spec.vendored_frameworks = [
    "Frameworks/FlutterPluginRegistrant.xcframework",
    "Frameworks/google_maps_flutter_ios.xcframework",
    "Frameworks/InAppChargingSDKiOS.xcframework",
    # "Frameworks/RoutePlanner.xcframework",
    # "/Users/madhan/Desktop/InAppChargingSDKiOS.xcframework",
  ]
  # The route planner (Kotlin/Native) needs sqlite3.
  # spec.libraries = "sqlite3"
  spec.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '$(inherited) $(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)/ $(SDKROOT)/usr/lib/swift',
    'LD_RUNPATH_SEARCH_PATHS' => '$(inherited) /usr/lib/swift',
  }
end
