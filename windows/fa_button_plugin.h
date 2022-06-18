#ifndef FLUTTER_PLUGIN_FA_BUTTON_PLUGIN_H_
#define FLUTTER_PLUGIN_FA_BUTTON_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace fa_button {

class FaButtonPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FaButtonPlugin();

  virtual ~FaButtonPlugin();

  // Disallow copy and assign.
  FaButtonPlugin(const FaButtonPlugin&) = delete;
  FaButtonPlugin& operator=(const FaButtonPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace fa_button

#endif  // FLUTTER_PLUGIN_FA_BUTTON_PLUGIN_H_
