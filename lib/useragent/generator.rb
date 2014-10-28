require File.dirname(__FILE__) + '/generator/version'
require File.dirname(__FILE__) + '/generator/android'
require File.dirname(__FILE__) + '/generator/ios'
require File.dirname(__FILE__) + '/generator/blackberry'

module UserAgent
  module Generator

    def self.generate(args)
      # Make sure at least the os_type was provided
      # if no os_type was provided, throw an error
      # I went back and forth on this one, but in the end,
      # I don't want to fall back to full-on implicit random behavior
      # when not even the os_type is given - that's what the
      os_type = args.fetch(:os_type, nil)

      # TODO: custom error messaging
      raise "Missing input: os_type. Must be either 'android', 'ios', or 'blackberry'" if os_type.nil?

      case os_type
        when :android; Android.user_agent(args)
        when :ios; IOS.user_agent(args)
        when :blackberry; Blackberry.user_agent(args)
        else raise "unsupported os_type: #{os_type}"
      end
    end

    def self.random
      # Generate a full-on random User Agent string
      # I'm not sure we even need this, will leave this stub here
      # and if I can think of a good reason for implementation,
      # I'll do it then
      raise "Not implemented"
    end

  end
end
