#include "flutter_application_2_plugin.h"

// This must be included before many other Windows headers.
#include <windows.h>

// For getPlatformVersion; remove unless needed for your plugin implementation.
#include <VersionHelpers.h>

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>
#include <flutter/standard_method_codec.h>

#include <memory>
#include <sstream>

#include "gen/flutter.pb.h"

namespace flutter_application_2 {

// static
void FlutterApplication_2Plugin::RegisterWithRegistrar(
    flutter::PluginRegistrarWindows *registrar) {
  auto channel =
      std::make_unique<flutter::MethodChannel<flutter::EncodableValue>>(
          registrar->messenger(), "flutter_application_2",
          &flutter::StandardMethodCodec::GetInstance());

  auto plugin = std::make_unique<FlutterApplication_2Plugin>();

  channel->SetMethodCallHandler(
      [plugin_pointer = plugin.get()](const auto &call, auto result) {
        plugin_pointer->HandleMethodCall(call, std::move(result));
      });

  registrar->AddPlugin(std::move(plugin));
}

FlutterApplication_2Plugin::FlutterApplication_2Plugin() {}

FlutterApplication_2Plugin::~FlutterApplication_2Plugin() {}

void FlutterApplication_2Plugin::HandleMethodCall(
    const flutter::MethodCall<flutter::EncodableValue> &method_call,
    std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result) {
  if (method_call.method_name().compare("getPlatformVersion") == 0) {
    const auto *arguments = std::get_if<std::vector<unsigned char>>(method_call.arguments());
    ScanSettings ss;
    ss.ParseFromArray(arguments->data(), (int) arguments->size());
    int val = ss.android_scan_mode();
    std::string uuid = ss.service_uuids();
    std::ostringstream version_stream;
    version_stream << "Windows ";
    if (IsWindows10OrGreater()) {
      version_stream << "10+";
    } else if (IsWindows8OrGreater()) {
      version_stream << "8";
    } else if (IsWindows7OrGreater()) {
      version_stream << "7";
    }
    ss.set_android_scan_mode(val + 20);
    ss.set_service_uuids(uuid + version_stream.str());
    std::string str;
    ss.SerializeToString(&str);
    result->Success(flutter::EncodableValue(str.c_str()));
  } else {
    result->NotImplemented();
  }
}

}  // namespace flutter_application_2
