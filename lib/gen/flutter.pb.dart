///
//  Generated code. Do not modify.
//  source: flutter.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ScanSettings extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ScanSettings', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'androidScanMode', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceUuids')
    ..hasRequiredFields = false
  ;

  ScanSettings._() : super();
  factory ScanSettings({
    $core.int? androidScanMode,
    $core.String? serviceUuids,
  }) {
    final _result = create();
    if (androidScanMode != null) {
      _result.androidScanMode = androidScanMode;
    }
    if (serviceUuids != null) {
      _result.serviceUuids = serviceUuids;
    }
    return _result;
  }
  factory ScanSettings.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScanSettings.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScanSettings clone() => ScanSettings()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScanSettings copyWith(void Function(ScanSettings) updates) => super.copyWith((message) => updates(message as ScanSettings)) as ScanSettings; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ScanSettings create() => ScanSettings._();
  ScanSettings createEmptyInstance() => create();
  static $pb.PbList<ScanSettings> createRepeated() => $pb.PbList<ScanSettings>();
  @$core.pragma('dart2js:noInline')
  static ScanSettings getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScanSettings>(create);
  static ScanSettings? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get androidScanMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set androidScanMode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAndroidScanMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearAndroidScanMode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serviceUuids => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceUuids($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServiceUuids() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceUuids() => clearField(2);
}

