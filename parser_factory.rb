# frozen_string_literal: true

require_relative 'parser/recurring_reload_parser'
require_relative 'parser/recurring_new_reload_parser'

class ParserFactory
  def for(factory_name)
    select_parser.dig(:"#{factory_name}").new
  end

  def select_parser
    {
      recurring_reload: RecurringReloadParser,
      recurring_new: RecurringNewReloadParser
    }
  end

end