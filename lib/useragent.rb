require File.dirname(__FILE__) + '/useragent/generator'
require File.dirname(__FILE__) + '/useragent/config'

module UserAgent

  def self.generate(args)
    # Delegate ua generation to the generator
    # I mean, makes sense right?
    Generator.generate(args)
  end

  # TODO: pull into yaml config file
  def self.default_language
    'en-us'
  end

end

