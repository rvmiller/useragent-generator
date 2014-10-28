module UserAgent
  module Motorola

    def self.default_version
      "2.2.2"
    end

    def self.default_user_agent(args)
      version  = args.fetch(:os_version, default_version)
      language = args.fetch(:language, UserAgent.default_language)
      "Mozilla/5.0 (Linux; U; Android #{version}; #{language}; DROIDX Build/VZW) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17 480X854 motorola DROIDX"
    end

    def self.user_agent(args)
      model      = args.fetch(:model, :default)
      os_version = args.fetch(:os_version, nil)
      language   = args.fetch(:language, UserAgent.default_language)

      case model
        when :default; default_user_agent(args)

        when "Milestone"
          os_version = "3.0" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; Milestone Build/SHOLS_U2_05.26.1) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

        when "Xoom"
          os_version = "3.0" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; Xoom Build/HWI69) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13"

        when "Droid 2"
          os_version = "2.2" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; DROID2 GLOBAL Build/S273) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

        when "Droid X"
          os_version = "2.1" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; DROIDX Build/VZW) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17 480X854 motorola DROIDX"

        when "Droid"
          os_version = "2.1" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; Droid Build/ESE81) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Mobile Safari/530.17"

        else raise "unsupported Motorola device: '#{model}'"
      end
    end

  end
end