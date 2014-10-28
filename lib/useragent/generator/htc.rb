module UserAgent
  module HTC

    def self.default_version
      "2.3.4"
    end

    def self.default_user_agent(args)
      version  = args.fetch(:os_version, default_version)
      language = args.fetch(:language, UserAgent.default_language)
      "Mozilla/5.0 (Linux; U; Android #{version}; #{language}; ADR6300 #{Android.build(version)}) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"
    end

    def self.user_agent(args)
      model      = args.fetch(:model, :default)
      os_version = args.fetch(:os_version, nil)
      language   = args.fetch(:language, UserAgent.default_language)

      case model
        when :default; default_user_agent(args)

        when 'Sensation'
          os_version = "4.0.3" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; Sensation_Z710e #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30"

        when "Droid Incredible"
          os_version = "2.3.4" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; ADR6300 #{Android.build(os_version)}) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

        when "Droid Eris"
          os_version = "1.5" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; ADR6200 #{Android.build(os_version)}) AppleWebKit/528.5+(KHTML, like Gecko) Version/3.1.2"

        when "One X"
          os_version = "4.0.4" if os_version.nil?
          "Mozilla/5.0 (Linux; U; Android #{os_version}; #{language}; HTC_One_X #{Android.build(os_version)}) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0"

        else raise "unsupported HTC device: '#{model}'"
      end
    end

  end
end