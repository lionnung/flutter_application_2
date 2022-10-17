#include "include/flutter_application_2/flutter_application_2_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_application_2_plugin.h"

void FlutterApplication_2PluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_application_2::FlutterApplication_2Plugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
