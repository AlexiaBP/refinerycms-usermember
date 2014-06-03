module Refinery
  module Usermembers
    class Engine < ::Rails::Engine
      include Refinery::Engine

      engine_name :refinery_usermembers
      isolate_namespace Refinery::Usermembers

      config.autoload_paths += %W( #{config.root}/lib )

      after_inclusion do
        Refinery::PagesController.send :include, Refinery::Usermembers::InstanceMethods
      end

      initializer "register refinery_usermembers plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.pathname = root
          plugin.name = "usermembers"
          plugin.menu_match = %r{refinery\/usermembers(\/.+?)?$}
          plugin.activity = {
            :class_name => :"refinery/usermembers/usermember",
            :title => "email"
          }
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.usermembers_admin_usermembers_path }
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Usermembers)
      end
    end
  end
end
