module NwPluginSlackNotifier
  module NwAppStructure
    module NwPatches
      module Apply
        class BeforeOne < Niiwin::NwInteraction

          string :id
          string :i_user_id
          hash :nw_patch_effects_override, default: {} # used for Niiwin core upgrades

          def execute
            puts "=============================="
            puts "PLUGIN TEST: Before One"
            puts "=============================="

            # Modified input can be returned here
            # inputs.merge(test_string: "Modified String")

            inputs
          end

        end
      end
    end
  end
end