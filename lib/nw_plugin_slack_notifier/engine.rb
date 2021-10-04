require_relative 'nw_loader/nw_plugins/initial_load'

module NwPluginSlackNotifier
  class Engine < ::Rails::Engine
    puts "NwPluginSlackNotifier::Engine"
  end
end
