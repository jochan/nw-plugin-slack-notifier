module NwPluginSlackNotifier
  module NwAppStructure
    module NwPatches
      module Apply
        class AfterTwo < Niiwin::NwInteraction

          string :id
          string :i_user_id
          hash :nw_patch_effects_override, default: {}

          def execute
            puts "=============================="
            puts "PLUGIN TEST: After Two"
            puts "=============================="

            inputs
          end

        end
      end
    end
  end
end