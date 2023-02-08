// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'flutter_application_2_platform_interface.dart';
import 'gen/flutter.pb.dart' as protos;

class FlutterApplication_2 {
  Future<String?> getPlatformVersion() {
    var settings = protos.ScanSettings.create()
      ..androidScanMode = 10
      ..serviceUuids = "This is a protos demo ~";

    return FlutterApplication_2Platform.instance
        .getPlatformVersion(settings.writeToBuffer());
  }
}
