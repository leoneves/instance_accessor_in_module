# frozen_string_literal: true

require_relative 'parse_factory'

module BaseProcessor
  def process(json_message)
    message = ParseFactory.new.for(self.class.factory_name).parse(json_message)
    process_recurring(message)
  end

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    attr_reader :factory_name

    def use_factory(factory_name)
      @factory_name = factory_name
    end
  end

end