module NwPluginSlackNotifier
  module NwAppStructure
    module NwPatches
      module Apply
        class BeforeTwo < Niiwin::NwInteraction

          object :interaction, class: Niiwin::NwAppStructure::NwPatches::Apply

          def execute
            puts "=============================="
            puts "PLUGIN TEST: Before Two"
            puts "=============================="

            # Modified input can be returned here
            # inputs.merge(test_string: "Another Modified String")

            inputs
          end

        end
      end
    end
  end
end