require_relative 'recurring_processor'
require_relative 'recurring_new_processor'
require 'json'

json = {
  recurring: {
    customer_msisdn: '21999999999',
    customer_email: 'teste@leo.com.br'
  }
}.to_json

t1 = Thread.new do
  recurring_processor = RecurringProcessor.new
  puts "t1 #{recurring_processor.process(json)}\n"
end

t2 = Thread.new do
  recurring_processor = RecurringNewProcessor.new
  puts "t2 new #{recurring_processor.process(json)}\n"
end

t1.join
t2.join



