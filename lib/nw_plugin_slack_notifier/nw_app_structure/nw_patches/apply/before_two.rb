module NwPluginSlackNotifier
  module NwAppStructure
    module NwPatches
      module Apply
        class BeforeTwo < Niiwin::NwInteraction

          string :id
          string :i_user_id
          hash :nw_patch_effects_override, default: {} # used for Niiwin core upgrades

          def execute
            puts "=============================="
            puts "PLUGIN TEST: Before Two"
            puts "=============================="

            inputs
          end

        end
      end
    end
  end
end