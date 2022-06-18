//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <fa_button/fa_button_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) fa_button_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FaButtonPlugin");
  fa_button_plugin_register_with_registrar(fa_button_registrar);
}
