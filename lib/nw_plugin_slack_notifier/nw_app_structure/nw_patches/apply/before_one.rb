module NwPluginSlackNotifier
  module NwAppStructure
    module NwPatches
      module Apply
        class BeforeOne < Niiwin::NwInteraction

          object :interaction, class: "Niiwin::NwAppStructure::NwPatches::Apply"

          def execute
            puts "=============================="
            puts "PLUGIN TEST: Before One"
            puts "=============================="

            # Modified input can be returned here
            # inputs.merge(test_string: "Modified String")

            nw_patch = Niiwin::NwPatch.find(interaction.inputs.id)
            i_user = IUser.find(interaction.inputs.i_user_id)

            # Here is where we would post to Slack, printing to console instead
            puts "=============================="
            puts "User #{i_user.display_name} is applying NwPatch #{nw_patch.id}"
            puts "=============================="

            inputs
          end

        end
      end
    end
  end
end