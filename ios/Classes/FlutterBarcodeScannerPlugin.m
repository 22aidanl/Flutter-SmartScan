#import "FlutterBarcodeScannerPlugin.h"
#import <flutter_smart_scan/flutter_smart_scan-Swift.h>

@implementation FlutterBarcodeScannerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterBarcodeScannerPlugin registerWithRegistrar:registrar];
}
@end
