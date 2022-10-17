import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_2/flutter_application_2_method_channel.dart';

void main() {
  MethodChannelFlutterApplication_2 platform =
      MethodChannelFlutterApplication_2();
  const MethodChannel channel = MethodChannel('flutter_application_2');

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
    expect(await platform.getPlatformVersion(Uint8List(0)), '42');
  });
}
