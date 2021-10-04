module NwPluginSlackNotifier
  module NwAppStructure
    module NwPatches
      module Apply
        class BeforeOne < Niiwin::NwInteraction

          object :interaction, class: Niiwin::NwAppStructure::NwPatches::Apply

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