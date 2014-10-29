require File.dirname(__FILE__) + '/iphone'
require File.dirname(__FILE__) + '/ipad'
require File.dirname(__FILE__) + '/ipod'

module UserAgent
  module IOS

    def self.user_agent(args)
      device = args.fetch(:device, :default)
      case device
        when :default; default_ios_user_agent(args)
        when :iphone;  Iphone.user_agent(args)
        when :ipad;    Ipad.user_agent(args)
        when :ipod;    Ipod.user_agent(args)
        else raise UnsupportedDevice.new("unsupported ios device: #{device}")
      end
    end

    def self.default_ios_user_agent(args)
      Iphone.user_agent(args)
    end

    def self.build(version)
      raise InvalidInput.new("no version specified, you must provide a version") if version.nil?
      version_id = Config.parse(:ios, version)
      raise UnsupportedVersion.new("unsupported version '#{version}'") if version_id.nil?
      version_id
    end

    private
    def self.convert_ios_version(version)
      version.gsub(/\./, "_")
    end
  end

end