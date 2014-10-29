module UserAgent
  module Iphone

    def self.default_version
      "6.0"
    end

    def self.default_user_agent(version)
      version = default_version if version.nil?
      "Apple-iPhone5C2/#{IOS.build(version)}"
    end

    def self.user_agent(args)
      model      = args.fetch(:model, :default)
      os_version = args.fetch(:os_version, nil)

      case model
        when :default; default_user_agent(os_version)

        when "iPhone Generic"
          "iPhone"

        when "iPhone 1G"
          os_version = "2.0" if os_version.nil?
          "Apple-iPhone/#{IOS.build(os_version)}"

        when "iPhone 3G"
          os_version = "4.0" if os_version.nil?
          "Apple-iPhone1C2/#{IOS.build(os_version)}"

        when "iPhone 3GS"
          os_version = "4.0" if os_version.nil?
          "Apple-iPhone2C1/#{IOS.build(os_version)}"

        when "iPhone 4"
          os_version = "4.0" if os_version.nil?
          "Apple-iPhone3C1/#{IOS.build(os_version)}"

        when "iPhone 4S"
          os_version = "5.0" if os_version.nil?
          "Apple-iPhone4C1/#{IOS.build(os_version)}"

        when "iPhone 5"
          os_version = "6.0" if os_version.nil?
          "Apple-iPhone5C2/#{IOS.build(os_version)}"

        when "iPhone 5C"
          os_version = "7.0" if os_version.nil?
          "Apple-iPhone5C3/#{IOS.build(os_version)}"

        when "iPhone 5S"
          os_version = "7.0" if os_version.nil?
          "Apple-iPhone6C1/#{IOS.build(os_version)}"

        when "iPhone 6"
          os_version = "8.0" if os_version.nil?
          "Apple-iPhone7C2/#{IOS.build(os_version)}"

        when "iPhone 6+"
          os_version = "8.0" if os_version.nil?
          "Apple-iPhone7C1/#{IOS.build(os_version)}"

        else raise UnsupportedDeviceModel.new("unsupported iPhone model: '#{model}'")
      end
    end

  end

end