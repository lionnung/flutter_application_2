import 'package:flutter/foundation.dart';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_application_2_method_channel.dart';

abstract class FlutterApplication_2Platform extends PlatformInterface {
  /// Constructs a FlutterApplication_2Platform.
  FlutterApplication_2Platform() : super(token: _token);

  static final Object _token = Object();

  static FlutterApplication_2Platform _instance =
      MethodChannelFlutterApplication_2();

  /// The default instance of [FlutterApplication_2Platform] to use.
  ///
  /// Defaults to [MethodChannelFlutterApplication_2].
  static FlutterApplication_2Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterApplication_2Platform] when
  /// they register themselves.
  static set instance(FlutterApplication_2Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion(Uint8List data) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
