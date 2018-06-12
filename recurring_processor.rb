# frozen_string_literal: true

require_relative 'base_processor'

class RecurringProcessor
  include BaseProcessor

  use_parser 'recurring_reload'

  def process_recurring(message)
    message
  end

end