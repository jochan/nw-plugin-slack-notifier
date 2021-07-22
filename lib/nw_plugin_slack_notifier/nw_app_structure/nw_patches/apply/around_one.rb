module NwPluginSlackNotifier
  module NwAppStructure
    module NwPatches
      module Apply
        class AroundOne < Niiwin::NwInteraction

          object :interaction, class: Niiwin::NwAppStructure::NwPatches::Apply
          object :block, class: Proc

          def execute
            puts "=============================="
            puts "PLUGIN TEST: Around (Before)"
            puts "=============================="

            block.call

            puts "=============================="
            puts "PLUGIN TEST: Around (After)"
            puts "=============================="
          end

        end
      end
    end
  end
end