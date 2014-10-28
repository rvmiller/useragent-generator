module UserAgent
  module Samsung

    def self.default_version
      "2.2.2"
    end

    def self.default_user_agent(args)
      version  = args.fetch(:os_version, default_version)
      language = args.fetch(:language, UserAgent.default_language)
      "Mozilla/5.0 (Linux; U; Android #{version}; #{language}; SCH-I535 #{Android.build(version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"
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
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; GT-I7500 #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

        when ("Galaxy S" or "Vibrant")
          os_version = "2.0" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; GT-I9000 #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

        when "Galaxy S2"
          os_version = "4.0" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; SGH-I757M #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

        when "Galaxy S3"
          os_version = "4.0" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; SCH-I535 #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

        when 'Galaxy S3 GT'
          os_version = "4.2" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; SAMSUNG-SGH-I747 #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

        when 'Galaxy S4'
          os_version = "4.2.2" if os_version.nil?
          "Mozilla/5.0 (Linux; Android #{os_version}; #{language}; SAMSUNG GT-I9505 #{Android.build(os_version)}) AppleWebKit/535.19 (KHTML, like Gecko) Version/1.0 Chrome/18.0.1025.308 Mobile Safari/535.19"

        when "Galaxy Ace 2"
          os_version = "3.0" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; GT-I8160 #{Android.build(os_version)}) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

        when "Galaxy Tab"
          os_version = "2.3" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; SCH-I800 #{Android.build(os_version)}) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

        when "Galaxy Tab 2"
          os_version = "4.1.1" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; GT-P5113 #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML,like Gecko) Version/4.0 Safari/534.30"

        when "Galaxy Tab 3 Lite 7.0"
          os_version = "4.1.2" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; SM-T110 #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Safari/534.30"

        when ("Galaxy Tab 3" or "Galaxy Tab 3 7.0")
          os_version = "4.1.2" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; SM-T210R #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Safari/534.30"

        when "Galaxy Tab 3 8.0"
          os_version = "4.1.2" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; SM-T310 #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Safari/534.30"

        when "Galaxy Tab 3 10.1"
          os_version = "4.1.2" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; SM-T510 #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Safari/534.30"

        when "Galaxy Note"
          os_version = "2.3" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; GT-I9220 #{Android.build(os_version)}) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

        when "Galaxy Note 2"
          os_version = "4.3" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; GT-N7100 #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

        when "Galaxy Note 3"
          os_version = "4.3" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; SAMSUNG-SM-N900A #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

        when "Galaxy Note 10.1"
          os_version = "4.3" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; #{Android.build(os_version)}) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.5 Chrome/28.0.1500.94 Safari/537.36"

        else raise "unsupported device: '#{model}'"
      end
    end

  end
end