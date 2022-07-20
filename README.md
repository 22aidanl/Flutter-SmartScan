# Flutter-SmartScan

A plugin for Flutter apps that adds barcode scanning support on both Android and iOS.

[![pub package](https://img.shields.io/pub/v/flutter_smart_scan.svg)](https://pub.dartlang.org/packages/flutter_smart_scan)

![Demo gif](https://github.com/AmolGangadhare/MyProfileRepo/blob/master/flutter_barcode_scanning_demo.gif "Demo")


## Try/Get Started From the Example Project:
### iOS

Download/clone the repository, open `example/ios/Runner.xcworkspace` in Xcode, go to the **Runner** target in the project settings, and change **Team** under **Signing and Capabilities** to your Apple ID. Then, just run `flutter run` in the `example` directory.

### Android

Download/clone the repository, then run `flutter run` in the `example` directory.

## Help
This repository is a modified version of the [flutter_smart_scan repository, available here.](https://github.com/AmolGangadhare/flutter_smart_scan) The modifications allow you to exit the continuous barcode scanning mode at any point (for example, after a certain barcode is found). Read the comments in `example/lib/main.dart` to see how this is done.