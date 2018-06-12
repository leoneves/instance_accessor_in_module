# frozen_string_literal: true

require_relative 'recurring_reload_Parser'
require_relative 'recurring_new_reload_parser'

class ParseFactory
  def for(factory_name)
    select_factory.dig(:"#{factory_name}").new
  end

  def select_factory
    {
      recurring_reload: RecurringReloadParser,
      recurring_new: RecurringNewReloadParser
    }
  end

end