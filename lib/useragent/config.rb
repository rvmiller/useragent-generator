require 'yaml'

module UserAgent

  class Config
    @@props = Hash.new

    def self.parse(entity, key)
      # Lazy-load the props for the entity we need.
      # An entity can be an os type, a device, manufacturer,
      # pretty much anything that has properties we don't
      # want to hard-code in a class
      #
      @@props[entity] ||= load_props(entity)
      @@props[entity][key]
    end

    def self.load_props(entity)
      YAML.load_file(File.join(File.dirname(__FILE__), "config/#{entity}.yml"))
    end

  end

end