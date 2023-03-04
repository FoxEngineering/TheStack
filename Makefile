default: makeSplash
	flutter pub run flutter_launcher_icons

makeSplash:
	flutter clean
	flutter pub get
	flutter pub run flutter_native_splash:create

makeLaunchIcon:
	flutter clean
	flutter pub get
	flutter pub run flutter_launcher_icons