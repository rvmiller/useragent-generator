module UserAgent
  module Ipod

    # TODO: pull into yaml
    def self.default_version
      "4.0"
    end

    def self.default_user_agent(version)
      "Apple-iPod4C1/#{IOS.build(version)}"
    end

    def self.user_agent(args)
      model      = args.fetch(:model, :default)
      os_version = args.fetch(:os_version, default_version)

      case model
        when :default; default_user_agent(os_version)

        when "iPod", "iPod Touch 2"
          "Apple-iPod2C1/#{IOS.build(os_version)}"

        when "iPod3", "iPod Touch 3"
          "Apple-iPod3C1/#{IOS.build(os_version)}"

        when "iPod4", "iPod Touch 4"
          "Apple-iPod4C1/#{IOS.build(os_version)}"

        when "iPod5", "iPod Touch 5"
          "Apple-iPod5C1/#{IOS.build(os_version)}"

        else raise UnsupportedDeviceModel.new("unsupported iPod model: '#{model}'")
      end
    end
  end

end