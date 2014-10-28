require File.dirname(__FILE__) + '/samsung'
require File.dirname(__FILE__) + '/htc'
require File.dirname(__FILE__) + '/lg'
require File.dirname(__FILE__) + '/motorola'

module UserAgent
  module Android

    # TODO: custom error messaging
    def self.user_agent(args)
      device = args.fetch(:device, :default)
      case device
        when :default;  default_android_user_agent(args)
        when :samsung;  Samsung.user_agent(args)
        when :htc;      HTC.user_agent(args)
        when :lg;       LG.user_agent(args)
        when :motorola; Motorola.user_agent(args)
        else raise "unsupported android device make: #{device}"
      end
    end

    def self.default_android_user_agent(args)
      Samsung.user_agent(args)
    end

    def self.build(version)
      # TODO: custom error messaging
      raise "no version specified, you must provide a version" if version.nil?
      version_id = Config.parse(:android, version)
      # TODO: custom error messaging
      raise "unsupported version '#{version}'" if version_id.nil?
      "Build/#{version_id}"
    end

    private
    def self.major_version(os_version)
      os_version.split('.').take(2).join('.')
    end

    def self.version_map
      Config.parse(:android, )
    end

  end
end