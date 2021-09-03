module NwPluginSlackNotifier
  module NwAppStructure
    module NwPatches
      module Apply
        class AfterTwo < Niiwin::NwInteraction

          object :interaction, class: Niiwin::NwAppStructure::NwPatches::Apply

          def execute
            puts "=============================="
            puts "PLUGIN TEST: After Two"
            puts "=============================="
          end

        end
      end
    end
  end
end