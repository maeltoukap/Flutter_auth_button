#include "include/fa_button/fa_button_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "fa_button_plugin.h"

void FaButtonPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  fa_button::FaButtonPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
