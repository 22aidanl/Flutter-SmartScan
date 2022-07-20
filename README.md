# Flutter-SmartScan

A plugin for Flutter apps that adds barcode scanning support on both Android and iOS.

[![pub package](https://img.shields.io/pub/v/flutter_smart_scan.svg)](https://pub.dartlang.org/packages/flutter_smart_scan)

![Demo gif](https://github.com/AmolGangadhare/MyProfileRepo/blob/master/flutter_barcode_scanning_demo.gif "Demo")


## Try/Get Started From the Example Project:
### iOS

Download/clone the repository, open `example/ios/Runner.xcworkspace` in Xcode, go to the **Runner** target in the project settings, and change **Team** under **Signing and Capabilities** to your Apple ID. Then, just run `flutter run` in the `example` directory.

### Android

Download/clone the repository, then run `flutter run` in the `example` directory.

## Adding to an Existing Project:

Run `flutter pub add flutter_smart_scan` in your project's directory. Then, add `import 'package:flutter_smart_scan/flutter_smart_scan.dart';` to any file where you want to use barcode scanning. For Android projects, you're done! For iOS projects, follow the additional steps below:

### iOS

* Open `ios/Runner.xcworkspace` in Xcode
 * In the project settings, go to the **Info** tab and set **iOS Deployment Target** to 12.0
 * In the target settings, go to the **General** tab and set the **iOS** value to 12.0 under **Minimum Deployments** 
 * In the target settings, go to the **Signing and Capabilities** tab and change **Team** under **Signing and Capabilities** to your Apple ID.


## Help
This repository is a modified version of the [flutter_barcode_scanner repository, available here.](https://github.com/AmolGangadhare/flutter_barcode_scanner) The modifications allow you to exit the continuous barcode scanning mode at any point (for example, after a certain barcode is found). Read the comments in `example/lib/main.dart` to see how this is done. The other functionalities are identical to the flutter_barcode_scanner repository, so you can use its documentation as needed.