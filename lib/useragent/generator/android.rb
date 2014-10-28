require File.dirname(__FILE__) + '/samsung'
require File.dirname(__FILE__) + '/htc'
require File.dirname(__FILE__) + '/lg'
require File.dirname(__FILE__) + '/motorola'

module UserAgent
  module Android

    # TODO: custom error messaging
    def self.user_agent(args)
      device = args.fetch(:device, :default)
      case device
        when :default;  default_android_user_agent(args)
        when :samsung;  Samsung.user_agent(args)
        when :htc;      HTC.user_agent(args)
        when :lg;       LG.user_agent(args)
        when :motorola; Motorola.user_agent(args)
        else raise "unsupported android device make: #{device}"
      end
    end

    def self.default_android_user_agent(args)
      Samsung.user_agent(args)
    end

    def self.build(version)
      # TODO: custom error messaging
      raise "no version specified, you must provide a version" if version.nil?
      version_id = version_map.fetch(version, nil)
      # TODO: custom error messaging
      raise "unsupported version '#{version}'" if version_id.nil?
      "Build/#{version_id}"
    end

    private
    def self.major_version(os_version)
      os_version.split('.').take(2).join('.')
    end

    def self.version_map
      {"1.6" => "DMD64",
       "2.0" => "ESD20",
       "2.0.1" => "ESD56",
       "2.1" => "EPF21B",
       "2.2" => "FRG22D",
       "2.2.1" => "FRG83D",
       "2.2.2" => "FRG83G",
       "2.2.3" => "FRK76C",
       "2.3" => "GRH55",
       "2.3.1" => "GRH78",
       "2.3.2" => "GRH78C",
       "2.3.3" => "GRI54",
       "2.3.4" => "GRJ22",
       "2.3.5" => "GRJ90",
       "2.3.6" => "GRK39F",
       "3.0" => "HRI39",
       "3.1" => "HMJ37",
       "3.2" => "HTJ85B",
       "3.2.1" => "HTK75D",
       "3.2.2" => "HLK75D",
       "3.2.4" => "HLK75F",
       "3.2.6" => "HLK75H",
       "4.0" => "ITL41F",
       "4.0.1" => "ITL41F",
       "4.0.2" => "ICL53F",
       "4.0.3" => "IML77",
       "4.0.4" => "IMM76L",
       "4.1" => "JRO03S",
       "4.1.1" => "JRO03S",
       "4.1.2" => "JZO54M",
       "4.2" => "JOP40C",
       "4.2.1" => "JOP40G",
       "4.2.2" => "JDQ39E",
       "4.3" => "JLS36C",
       "4.3.1" => "JLS36I",
       "4.4" => "KRT16S",
       "4.4.1" => "KOT49E",
       "4.4.2" => "KVT49L",
       "4.4.3" => "KTU84M",
       "4.4.4" => "KTU84Q"
      }
    end

  end
end