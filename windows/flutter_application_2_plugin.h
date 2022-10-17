#ifndef FLUTTER_PLUGIN_FLUTTER_APPLICATION_2_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_APPLICATION_2_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_application_2 {

class FlutterApplication_2Plugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterApplication_2Plugin();

  virtual ~FlutterApplication_2Plugin();

  // Disallow copy and assign.
  FlutterApplication_2Plugin(const FlutterApplication_2Plugin&) = delete;
  FlutterApplication_2Plugin& operator=(const FlutterApplication_2Plugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_application_2

#endif  // FLUTTER_PLUGIN_FLUTTER_APPLICATION_2_PLUGIN_H_
