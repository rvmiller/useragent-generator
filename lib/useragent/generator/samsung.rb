module UserAgent
  module Samsung

    def self.default_version
      "2.2.2"
    end

    def self.default_user_agent(args)
      os_version = args.fetch(:os_version, default_version)
      language   = args.fetch(:language, UserAgent.default_language)
      "#{Android.platform os_version, language, 'SCH-I535'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"
    end

    # TODO: more devices
    def self.user_agent(args)
      model      = args.fetch(:model, :default)
      os_version = args.fetch(:os_version, nil)
      language   = args.fetch(:language, UserAgent.default_language)

      case model
        when :default; default_user_agent(args)

        when "Galaxy"
          os_version = "2.0" if os_version.nil?
          "#{Android.platform os_version, language, 'GT-I7500'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Galaxy S", "Vibrant"
          os_version = "2.0" if os_version.nil?
          "#{Android.platform os_version, language, 'GT-I9000'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Galaxy S2", "Galaxy SII"
          os_version = "4.0" if os_version.nil?
          "#{Android.platform os_version, language, 'SGH-I757M'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Galaxy S3", "Galaxy SIII"
          os_version = "4.0" if os_version.nil?
          "#{Android.platform os_version, language, 'SCH-I535'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when 'Galaxy S3 GT'
          os_version = "4.2" if os_version.nil?
          "#{Android.platform os_version, language, 'SAMSUNG-SGH-I747'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when 'Galaxy S4'
          os_version = "4.2.2" if os_version.nil?
          "#{Android.platform os_version, language, 'SAMSUNG GT-I9505'} #{Webkit.apple('535.19', '1.0')} #{Webkit.chrome('18.0.1025.308')} #{Webkit.safari('535.19')}"

        when "Galaxy S5"
          os_version = "4.4.2" if os_version.nil?
          "#{Android.platform os_version, language, 'SAMSUNG SM-G900F'} #{Webkit.apple('537.36', '1.6')} #{Webkit.chrome('38.0.2125.102')} Mobile"

        when "Galaxy Ace 2"
          os_version = "3.0" if os_version.nil?
          "#{Android.platform os_version, language, 'GT-I8160'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"

        when "Galaxy Tab"
          os_version = "2.3" if os_version.nil?
          "#{Android.platform os_version, language, 'SCH-I800'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"

        when "Galaxy Tab 2"
          os_version = "4.1.1" if os_version.nil?
          "#{Android.platform os_version, language, 'GT-P5113'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Galaxy Tab 3 Lite 7.0"
          os_version = "4.1.2" if os_version.nil?
          "#{Android.platform os_version, language, 'SM-T110'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Galaxy Tab 3", "Galaxy Tab 3 7.0"
          os_version = "4.1.2" if os_version.nil?
          "#{Android.platform os_version, language, 'SM-T210R'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Galaxy Tab 3 8.0"
          os_version = "4.1.2" if os_version.nil?
          "#{Android.platform os_version, language, 'SM-T310'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Galaxy Tab 3 10.1"
          os_version = "4.1.2" if os_version.nil?
          "#{Android.platform os_version, language, 'SM-T510'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Galaxy Note"
          os_version = "2.3" if os_version.nil?
          "#{Android.platform os_version, language, 'GT-I9220'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"

        when "Galaxy Note 2"
          os_version = "4.3" if os_version.nil?
          "#{Android.platform os_version, language, 'GT-N7100'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Galaxy Note 3"
          os_version = "4.3" if os_version.nil?
          "#{Android.platform os_version, language, 'SAMSUNG-SM-N900A'} #{Webkit.apple('534.30', '4.0')} #{Webkit.safari('534.30')}"

        when "Galaxy Note 10.1"
          os_version = "4.3" if os_version.nil?
          "#{Android.platform os_version, language, 'SAMSUNG SM-P600'} #{Webkit.apple('537.36', '1.5')} #{Webkit.chrome('28.0.1500.94')} #{Webkit.safari('537.36')}"

        when "Galaxy Round"
          os_version = "4.3.1" if os_version.nil?
          "#{Android.platform os_version, language, 'SAMSUNG SM-G910S'} #{Webkit.apple('537.36', '4.0')} #{Webkit.chrome('38.0.2125.102')} #{Webkit.safari('537.36')}"

        else raise "unsupported device: '#{model}'"
      end
    end

  end
end