module UserAgent
  module Webkit

    def self.apple(build, version)
      "AppleWebKit/#{build} (KHTML, like Gecko) Version/#{version}"
    end

    def self.safari(build)
      "Mobile Safari/#{build}"
    end

    def self.chrome(build)
      "Chrome/#{build}"
    end

  end
end