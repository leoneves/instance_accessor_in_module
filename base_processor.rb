# frozen_string_literal: true

require_relative 'parser_factory'

module BaseProcessor
  def process(json_message)
    message = ParserFactory.new.for(self.class.parser_name).parse(json_message)
    process_recurring(message)
  end

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    attr_reader :parser_name

    def use_parser(factory_name)
      @parser_name = factory_name
    end
  end

end