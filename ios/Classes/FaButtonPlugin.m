#import "FaButtonPlugin.h"
#if __has_include(<fa_button/fa_button-Swift.h>)
#import <fa_button/fa_button-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fa_button-Swift.h"
#endif

@implementation FaButtonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFaButtonPlugin registerWithRegistrar:registrar];
}
@end
