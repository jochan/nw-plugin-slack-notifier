module NwPluginSlackNotifier
  module NwAppStructure
    module NwPatches
      module Apply
        class AfterOne < Niiwin::NwInteraction

          object :interaction, class: Niiwin::NwAppStructure::NwPatches::Apply

          def execute
            puts "=============================="
            puts "PLUGIN TEST: After One"
            puts "=============================="
          end

        end
      end
    end
  end
end