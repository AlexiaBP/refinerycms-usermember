require "refinerycms-core"

module Refinery
  autoload :UsermembersGenerator, "generators/refinery/usermembers/usermembers_generator"

  module Usermembers
    require "refinery/usermembers/engine"

    autoload :InstanceMethods, "refinery/usermembers/instance_methods"

    class << self
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        # TODO?
        @factory_paths ||= [ root.join("spec/factories").to_s ]
      end
    end
  end
end
