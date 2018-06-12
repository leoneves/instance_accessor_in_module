# frozen_string_literal: true

require 'json'

class RecurringReloadParser
  def parse(message_json)
    message = JSON.parse(message_json, symbolize_names: true)
    build_customer(message)
  end

  def build_customer(json)
    {
      customer: {
        phone: json.dig(:recurring, :customer_msisdn),
        email: json.dig(:recurring, :customer_email)
      }
    }
  end
end