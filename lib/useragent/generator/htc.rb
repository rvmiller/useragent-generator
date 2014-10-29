module UserAgent
  module HTC

    # TODO: get this from yml
    def self.default_version
      "2.3.4"
    end

    def self.default_user_agent(args)
      os_version = args.fetch(:os_version, default_version)
      language   = args.fetch(:language, UserAgent.default_language)
      "#{Android.platform os_version, language, 'ADR6300'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"
    end

    def self.user_agent(args)
      model      = args.fetch(:model, :default)
      os_version = args.fetch(:os_version, nil)
      language   = args.fetch(:language, UserAgent.default_language)

      case model
        when :default; default_user_agent(args)

        when 'Sensation'
          os_version = "4.0.3" if os_version.nil?
          "#{Android.platform os_version, language, 'Sensation_Z710e'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Desire"
          os_version = "2.3.4" if os_version.nil?
          "#{Android.platform os_version, language, 'HTC Desire'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"

        when "Desire S"
          os_version = "4.0.1" if os_version.nil?
          "#{Android.platform os_version, language, 'HTC_DesireS_S510e'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Desire X"
          os_version = "4.1.1" if os_version.nil?
          "#{Android.platform os_version, language, 'HTC Desire X'} #{Webkit.apple('537.30', '4.0')} #{Webkit.chrome('31.0.1650.59')} #{Webkit.safari('537.36')}"

        when "Desire Z"
          os_version = "2.3.1" if os_version.nil?
          "#{Android.platform os_version, language, 'HTC_DesireZ_A7272'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"

        when "EVO"
          os_version = "4.1.1" if os_version.nil?
          "#{Android.platform os_version, language, 'EVO'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "EVO 3D"
          os_version = "4.0.1" if os_version.nil?
          "#{Android.platform os_version, language, 'Sprint APX515CKT'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Droid Incredible"
          os_version = "2.3.4" if os_version.nil?
          "#{Android.platform os_version, language, 'ADR6300'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"

        when "Droid Eris"
          os_version = "4.0.1" if os_version.nil?
          "#{Android.platform os_version, language, 'ADR6200'} #{Webkit.apple('528.5', '3.1.2')} #{Webkit.safari('528.5')}"

        when "One X"
          os_version = "4.0.4" if os_version.nil?
          "#{Android.platform os_version, language, 'HTC_One_X'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        else raise UnsupportedDeviceModel.new("unsupported HTC device: '#{model}'")
      end
    end

  end
end