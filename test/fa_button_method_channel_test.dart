import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fa_button/fa_button_method_channel.dart';

void main() {
  MethodChannelFaButton platform = MethodChannelFaButton();
  const MethodChannel channel = MethodChannel('fa_button');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
