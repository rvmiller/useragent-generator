module UserAgent
  module Blackberry

    def self.default_version
      "6.0.0.448"
    end

    def self.default_model
      "9700"
    end

    def self.default_user_agent(args)
      version  = args.fetch(:version, default_version)
      language = args.fetch(:language, UserAgent.default_language)
      "Mozilla/5.0 (BlackBerry; U; BlackBerry #{default_model}; #{language}) AppleWebKit/534.8+ (KHTML, like Gecko) Version/#{version} Mobile Safari/534.8+"
    end

    #TODO: version vs. browser version
    #TODO: BB10 devices - http://devblog.blackberry.com/2012/08/blackberry-10-user-agent-string/
    def self.user_agent(args)
      model    = args.fetch(:model, :default)
      version  = args.fetch(:os_version, nil)
      language = args.fetch(:language, UserAgent.default_language)

      case model
        when :default; default_user_agent(args)

        when /^9/
          version = "6.0.0.448" if version.nil?
          "Mozilla/5.0 (BlackBerry; U; BlackBerry #{model}; #{language}) AppleWebKit/534.8+ (KHTML, like Gecko) Version/#{version} Mobile Safari/534.8+"

        when /^88/
          version = "4.3.0" if version.nil?
          "BlackBerry#{model}/#{version} Profile/MIDP-2.0 Configuration/CLDC-1.1 VendorID/105"

        when /^87/
          version = "4.1.0" if version.nil?
          "BlackBerry#{model}/#{version} Profile/MIDP-2.0 Configuration/CLDC-1.1 VendorID/105"

        when /^83/
          version = "4.5.0.188" if version.nil?
          "BlackBerry#{model}/#{version} Profile/MIDP-2.0 Configuration/CLDC-1.1 VendorID/100"

        when /^81/
          version = "4.3.0" if version.nil?
          "BlackBerry#{model}/#{version} Profile/MIDP-2.0 Configuration/CLDC-1.1 VendorID/118"

        when /^71/
          version = "4.1.0" if version.nil?
          "BlackBerry#{model}/#{version} Profile/MIDP-2.0 Configuration/CLDC-1.1 VendorID/103"

        when /Playbook/i
          "Mozilla/5.0 (PlayBook; U; RIM Tablet OS #{version}; #{language}) AppleWebKit/535.8+ (KHTML, like Gecko) Version/#{version} Safari/535.8+"

        else raise "unsupported Blackberry device: '#{model}'"
      end
    end

  end
end