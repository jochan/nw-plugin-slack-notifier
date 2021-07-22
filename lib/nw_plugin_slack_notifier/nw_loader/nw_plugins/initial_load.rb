# Registers callbacks for plugin
#
# Order of plugin registration matters:
# Around (Before)
# BeforeOne
# BeforeTwo
# AfterTwo
# AfterOne
# Around (After)
#
module NwPluginSlackNotifier
  module NwLoader
    module NwPlugins
      class InitialLoad < Niiwin::NwInteraction

        include Niiwin::NwLoader::NwPlugins::InitialLoadMixin

        def execute
          # Announce intention of applying NwPatch to Slack
          register_plugin_extension(
            :around,
            "Niiwin::NwAppStructure::NwPatches::Apply",
            NwPluginSlackNotifier::NwAppStructure::NwPatches::Apply::AroundOne,
          )

          register_plugin_extension(
            :before,
            "Niiwin::NwAppStructure::NwPatches::Apply",
            NwPluginSlackNotifier::NwAppStructure::NwPatches::Apply::BeforeOne,
          )

          register_plugin_extension(
            :before,
            "Niiwin::NwAppStructure::NwPatches::Apply",
            NwPluginSlackNotifier::NwAppStructure::NwPatches::Apply::BeforeTwo,
          )

          register_plugin_extension(
            :after,
            "Niiwin::NwAppStructure::NwPatches::Apply",
            NwPluginSlackNotifier::NwAppStructure::NwPatches::Apply::AfterOne,
          )

          register_plugin_extension(
            :after,
            "Niiwin::NwAppStructure::NwPatches::Apply",
            NwPluginSlackNotifier::NwAppStructure::NwPatches::Apply::AfterTwo,
          )
        end

      end
    end
  end
end
