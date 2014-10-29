module UserAgent
  module Motorola

    def self.default_version
      "2.2.2"
    end

    def self.default_user_agent(args)
      os_version = args.fetch(:os_version, default_version)
      language   = args.fetch(:language, UserAgent.default_language)
      "#{Android.platform os_version, language, 'DROIDX'} #{Webkit.apple('530.17', '4.0')} #{Webkit.safari('530.17')} 480X854 motorola DROIDX"
    end

    def self.user_agent(args)
      model      = args.fetch(:model, :default)
      os_version = args.fetch(:os_version, nil)
      language   = args.fetch(:language, UserAgent.default_language)

      case model
        when :default; default_user_agent(args)

        when "Milestone"
          os_version = "3.0" if os_version.nil?
          "#{Android.platform os_version, language, 'Milestone'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"

        when "Xoom"
          os_version = "3.0" if os_version.nil?
          "#{Android.platform os_version, language, 'Xoom'} #{Webkit.apple('534.13', '4.0')} #{Webkit.safari('534.13')}"

        when "Droid 2"
          os_version = "2.2" if os_version.nil?
          "#{Android.platform os_version, language, 'DROID2 GLOBAL'} #{Webkit.apple('533.1', '4.0')} #{Webkit.safari('533.1')}"

        when "Droid X"
          os_version = "2.1" if os_version.nil?
          "#{Android.platform os_version, language, 'DROIDX'} #{Webkit.apple('530.17', '4.0')} #{Webkit.safari('530.17')} 480X854 motorola DROIDX"

        when "Droid"
          os_version = "2.1" if os_version.nil?
          "#{Android.platform os_version, language, 'Droid'} #{Webkit.apple('530.17', '4.0')} #{Webkit.safari('530.17')}"

        else raise "unsupported Motorola device: '#{model}'"
      end
    end

  end
end