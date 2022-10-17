import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_application_2_platform_interface.dart';
import 'gen/flutter.pb.dart' as protos;

class ScanResult {
  ScanResult.fromProto(protos.ScanSettings p)
      : value = p.androidScanMode,
        str = p.serviceUuids;

  final int value;
  final String str;

  @override
  String toString() {
    return 'ScanResult{androidScanMode: $value, serviceUuids: $str}';
  }
}

/// An implementation of [FlutterApplication_2Platform] that uses method channels.
class MethodChannelFlutterApplication_2 extends FlutterApplication_2Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_application_2');

  @override
  Future<String?> getPlatformVersion(Uint8List data) async {
    final String result =
        await methodChannel.invokeMethod('getPlatformVersion', data);
    List<int> rr = result.runes.toList();
    final p = protos.ScanSettings.fromBuffer(rr);
    final r = ScanResult.fromProto(p);
    String version = '${r.str} (${r.value})';

    return version;
  }
}
