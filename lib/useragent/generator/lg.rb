module UserAgent
  module LG

    def self.default_version
      "2.2.2"
    end

    def self.default_user_agent(args)
      version  = args.fetch(:os_version, default_version)
      language = args.fetch(:language, UserAgent.default_language)
      "Mozilla/5.0 (Linux; U; Android #{version}; #{language}; LG-D855 #{Android.build(version)}) AppleWebKit/537.16 (KHTML, like Gecko) Version/4.0 Mobile"
    end

    def self.user_agent(args)
      model      = args.fetch(:model, :default)
      os_version = args.fetch(:os_version, nil)
      language   = args.fetch(:language, UserAgent.default_language)

      case model
        when :default; default_user_agent(args)

        when "Optimus V"
          os_version = "2.2.2" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; VM670 #{Android.build(os_version)}) AppleWebKit/533.1 (KHTML, like Gecko)"

        when "U900", "Revolution"
          os_version = "2.2.2" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; VS910 4G Build/VS910ZV6) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

        when "Optimus"
          os_version = "2.2.1" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; LG-MS690 #{Android.build(os_version)}) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

        when "Optimus L9"
          os_version = "4.0.1" if os_version.nil?
          "Mozilla/5.0 (Linux; Android #{os_version}; #{language};LG-P768 #{Android.build(os_version)}) AppleWebKit/535.19 (KHTML, like Gecko) Mobile Safari/535.19"

        when "G3"
          os_version = "4.2.1" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; LG-D855 #{Android.build(os_version)}) AppleWebKit/537.16 (KHTML, like Gecko) Version/4.0 Mobile"

        when "G2"
          os_version = "4.2.1" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; LG-D802 #{Android.build(os_version)}) AppleWebKit/537.16 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.16"

        when "Vista"
          os_version = "4.4.1" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; LG-D631/D63108g #{Android.build(os_version)}) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Mobile Safari/537.36"

        when "G Flex", "Flex"
          os_version = "4.2.2" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; LG-D950/D95008m #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.2 Mobile Safari/534.30"

        else "unsupported LG device: '#{model}'"
      end
    end

  end
end