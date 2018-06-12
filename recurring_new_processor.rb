# frozen_string_literal: true

require_relative 'base_processor'

class RecurringNewProcessor
  include BaseProcessor

  use_parser 'recurring_new'

  def process_recurring(message)
    message
  end

end