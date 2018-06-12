# frozen_string_literal: true

require_relative 'base_processor'

class RecurringProcessor
  include BaseProcessor

  use_factory 'recurring_reload'

  def process_recurring(message)
    message
  end

end