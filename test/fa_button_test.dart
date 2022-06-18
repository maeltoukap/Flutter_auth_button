import 'package:flutter_test/flutter_test.dart';
import 'package:fa_button/fa_button.dart';
import 'package:fa_button/fa_button_platform_interface.dart';
import 'package:fa_button/fa_button_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFaButtonPlatform 
    with MockPlatformInterfaceMixin
    implements FaButtonPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FaButtonPlatform initialPlatform = FaButtonPlatform.instance;

  test('$MethodChannelFaButton is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFaButton>());
  });

  test('getPlatformVersion', () async {
    FaButton faButtonPlugin = FaButton();
    MockFaButtonPlatform fakePlatform = MockFaButtonPlatform();
    FaButtonPlatform.instance = fakePlatform;
  
    expect(await faButtonPlugin.getPlatformVersion(), '42');
  });
}
