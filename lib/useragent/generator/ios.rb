require File.dirname(__FILE__) + '/iphone'
require File.dirname(__FILE__) + '/ipad'
require File.dirname(__FILE__) + '/ipod'

module UserAgent
  module IOS

    def self.user_agent(args)
      device = args.fetch(:device, :default)
      case device
        when :default; default_ios_user_agent(args)
        when :iphone;  Iphone.user_agent(args)
        when :ipad;    Ipad.user_agent(args)
        when :ipod;    Ipod.user_agent(args)
        else raise "unsupported ios device: #{device}"
      end
    end

    def self.default_ios_user_agent(args)
      Iphone.user_agent(args)
    end

    def self.build(version)
      # TODO: custom error messaging
      raise "no version specified, you must provide a version" if version.nil?
      version_id = version_map.fetch(version, nil)
      # TODO: custom error messaging
      raise "unsupported version '#{version}'" if version_id.nil?
      version_id
    end

    private
    def self.convert_ios_version(version)
      version.gsub(/\./, "_")
    end

    # TODO: put this in yaml, load into memory once?
    def self.version_map
      {"2.0" => "501.347",
       "2.2.1"=>"508.11",
       "3.0"=>"701.341",
       "3.0.1"=>"701.400",
       "3.2"=>"702.367",
       "3.2.1"=>"702.405",
       "3.2.2"=>"702.500",
       "3.1"=>"703.144",
       "3.1.2"=>"704.11",
       "3.1.3"=>"705.18",
       "4.0"=>"801.293",
       "4.0.1"=>"801.306",
       "4.0.2"=>"801.400",
       "4.1"=>"802.118",
       "4.2.1"=>"803.14800001",
       "4.2.5"=>"805.128",
       "4.2.6"=>"805.200",
       "4.2.7"=>"805.303",
       "4.2.8"=>"805.401",
       "4.2.9"=>"805.501",
       "4.2.10"=>"805.600",
       "4.3"=>"806.191",
       "4.3.1"=>"807.4",
       "4.3.2"=>"808.8",
       "4.3.3"=>"810.3",
       "4.3.4"=>"811.2",
       "4.3.5"=>"812.1",
       "5.0"=>"901.334",
       "5.0.1"=>"901.401",
       "5.1"=>"902.171",
       "5.1.1"=>"902.206",
       "6.0"=>"1001.401",
       "6.0.1"=>"1001.521",
       "6.1"=>"1002.141",
       "6.1.2"=>"1002.146",
       "6.1.3"=>"1002.350",
       "7.0"=>"1101.465",
       "7.0.1"=>"1101.47000001",
       "7.0.2"=>"1101.501",
       "7.0.3"=>"1102.511",
       "7.0.4"=>"1102.55400001",
       "7.0.5"=>"1102.601",
       "7.0.6"=>"1102.651",
       "7.1"=>"1104.167",
       "7.1.1"=>"1104.201",
       "7.1.2"=>"1104.257",
       "8.0"=>"1201.365",
       "8.0.2"=>"1201.405",
       "8.1"=>"1202.410"}
    end

  end

end