module UserAgent
  module Ipad

    # TODO: pull into yaml
    def self.default_version
      "4.3"
    end

    def self.default_user_agent(version)
      version = default_version if version.nil?
      "Apple-iPad2C1/#{IOS.build(version)}"
    end

    def self.user_agent(args)
      model      = args.fetch(:model, :default)
      os_version = args.fetch(:os_version, nil)

      case model
        when :default; default_user_agent(os_version)

        when ("iPad Generic" or "iPad")
          os_version = "3.2" if os_version.nil?
          "Apple-iPad/#{IOS.build(os_version)}"

        when ("iPad" or "iPad WIFI")
          os_version = "4.2.1" if os_version.nil?
          "Apple-iPad1C1/#{IOS.build(os_version)}"

        # default ipad type when none is given
        when ("iPad2" or "iPad2 WIFI")
          os_version = "4.3" if os_version.nil?
          "Apple-iPad2C1/#{IOS.build(os_version)}"

        when "iPad2 WIFI+3G"
          os_version = "5.0" if os_version.nil?
          "Apple-iPad2C2/#{IOS.build(os_version)}"

        when "iPad2 WIFI+3G CDMA"
          os_version = "5.0" if os_version.nil?
          "Apple-iPad2C3/#{IOS.build(os_version)}"

        when "iPad Mini WIFI"
          os_version = "5.0.1" if os_version.nil?
          "Apple-iPad2C4/#{IOS.build(os_version)}"

        when "iPad Mini WIFI+LTE"
          os_version = "5.0.1" if os_version.nil?
          "Apple-iPad2C5/#{IOS.build(os_version)}"

        when ("iPad3" or "iPad3 WIFI")
          os_version = "5.1" if os_version.nil?
          "Apple-iPad3C1/#{IOS.build(os_version)}"

        when "iPad3 WIFI+LTE"
          os_version = "5.1" if os_version.nil?
          "Apple-iPad3C2/#{IOS.build(os_version)}"

        when "iPad3 Retina WIFI"
          os_version = "5.1.1" if os_version.nil?
          "Apple-iPad3C3/#{IOS.build(os_version)}"

        when "iPad3 Retina WIFI+LTE"
          os_version = "5.1.1" if os_version.nil?
          "Apple-iPad3C4/#{IOS.build(os_version)}"

        when ("iPad4" or "iPad4 WIFI")
          os_version = "7.0" if os_version.nil?
          "Apple-iPad4C1/#{IOS.build(os_version)}"

        when "iPad4 WIFI+LTE"
          os_version = "7.0" if os_version.nil?
          "Apple-iPad4C2/#{IOS.build(os_version)}"

        when "iPad4 Retina WIFI"
          os_version = "7.1" if os_version.nil?
          "Apple-iPad4C4/#{IOS.build(os_version)}"

        when "iPad4 Retina WIFI+LTE"
          os_version = "7.1" if os_version.nil?
          "Apple-iPad4C5/#{IOS.build(os_version)}"

        when "iPad5"
          os_version = "8.0" if os_version.nil?
          "Apple-iPad5C4/#{IOS.build(os_version)}"

        else raise UnsupportedDeviceModel.new("unsupported iPad model: '#{model}'")
      end
    end

  end

end