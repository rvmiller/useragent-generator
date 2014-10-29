require File.dirname(__FILE__) + '/useragent/generator'
require File.dirname(__FILE__) + '/useragent/config'
require File.dirname(__FILE__) + '/useragent/exceptions'

module UserAgent

  def self.generate(args)
    # Delegate ua generation to the generator
    # I mean, makes sense right?
    Generator.generate(args)
  end

  def self.random
    # Delegate ua random generation to the generator
    # If you answered 'yes' above, to answer 'no' here
    # would be absurd. ballsy, but absurd.
    Generator.random
  end

  # TODO: pull into yaml config file
  def self.default_language
    'en-us'
  end

end