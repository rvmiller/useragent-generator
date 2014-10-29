module UserAgent
  module LG

    def self.default_version
      "2.2.2"
    end

    def self.default_user_agent(args)
      os_version  = args.fetch(:os_version, default_version)
      language = args.fetch(:language, UserAgent.default_language)
      "#{Android.platform os_version, language, 'LG-D855'} #{Webkit.apple('537.16', '4.0')} Mobile"
    end

    def self.user_agent(args)
      model      = args.fetch(:model, :default)
      os_version = args.fetch(:os_version, nil)
      language   = args.fetch(:language, UserAgent.default_language)

      case model
        when :default; default_user_agent(args)

        when "Optimus V"
          os_version = "2.2.2" if os_version.nil?
          "#{Android.platform os_version, language, 'VM670'} #{Webkit.apple('533.1', '4.0')} Mobile"

        when "U900", "Revolution"
          os_version = "2.2.2" if os_version.nil?
          "#{Android.platform os_version, language, 'VS910 4G'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"

        when "Optimus"
          os_version = "2.2.1" if os_version.nil?
          "#{Android.platform os_version, language, 'LG-MS690'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"

        when "Optimus L9"
          os_version = "4.0.1" if os_version.nil?
          "#{Android.platform os_version, language, 'LG-P768'} #{Webkit.apple('535.19', '4.0')} #{Webkit.safari('535.19')}"

        when "G3"
          os_version = "4.2.1" if os_version.nil?
          "#{Android.platform os_version, language, 'LG-D855'} #{Webkit.apple('537.16', '4.0')} #{Webkit.safari('537.16')}"

        when "G2"
          os_version = "4.2.1" if os_version.nil?
          "#{Android.platform os_version, language, 'LG-D802'} #{Webkit.apple('537.16', '4.0')} #{Webkit.safari('537.16')}"

        when "Vista"
          os_version = "4.4.1" if os_version.nil?
          "#{Android.platform os_version, language, 'LG-D631/D63108g'} #{Webkit.apple('537.36', '4.0')} #{Webkit.safari('537.36')}"

        when "G Flex", "Flex"
          os_version = "4.2.2" if os_version.nil?
          "#{Android.platform os_version, language, 'LG-D950/D95008m'} #{Webkit.apple('534.30', '4.2')} #{Webkit.safari('537.36')}"

        else raise UnsupportedDeviceModel.new("unsupported LG device: '#{model}'")
      end
    end

  end
end