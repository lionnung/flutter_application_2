import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_2/flutter_application_2.dart';
import 'package:flutter_application_2/flutter_application_2_platform_interface.dart';
import 'package:flutter_application_2/flutter_application_2_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterApplication_2Platform
    with MockPlatformInterfaceMixin
    implements FlutterApplication_2Platform {
  @override
  Future<String?> getPlatformVersion(Uint8List data) => Future.value('42');
}

void main() {
  final FlutterApplication_2Platform initialPlatform =
      FlutterApplication_2Platform.instance;

  test('$MethodChannelFlutterApplication_2 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterApplication_2>());
  });

  test('getPlatformVersion', () async {
    FlutterApplication_2 flutterApplication_2Plugin = FlutterApplication_2();
    MockFlutterApplication_2Platform fakePlatform =
        MockFlutterApplication_2Platform();
    FlutterApplication_2Platform.instance = fakePlatform;

    expect(await flutterApplication_2Plugin.getPlatformVersion(), '42');
  });
}
