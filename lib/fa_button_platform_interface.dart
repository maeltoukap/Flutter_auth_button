import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fa_button_method_channel.dart';

abstract class FaButtonPlatform extends PlatformInterface {
  /// Constructs a FaButtonPlatform.
  FaButtonPlatform() : super(token: _token);

  static final Object _token = Object();

  static FaButtonPlatform _instance = MethodChannelFaButton();

  /// The default instance of [FaButtonPlatform] to use.
  ///
  /// Defaults to [MethodChannelFaButton].
  static FaButtonPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FaButtonPlatform] when
  /// they register themselves.
  static set instance(FaButtonPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
