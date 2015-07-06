require 'csv'

namespace :import do

  desc "Import historical rates from csv"
  task historical_rates: :environment do
    %w[
      http://minfin.com.ua/currency/banks/usd/
      http://minfin.com.ua/currency/banks/eur/
      http://minfin.com.ua/currency/banks/rub/
      http://minfin.com.ua/currency/banks/gbp/
      http://minfin.com.ua/currency/banks/sek/
      http://minfin.com.ua/currency/banks/pln/
      http://minfin.com.ua/currency/banks/nok/
      http://minfin.com.ua/currency/banks/jpy/
      http://minfin.com.ua/currency/banks/dkk/
      http://minfin.com.ua/currency/banks/cny/
      http://minfin.com.ua/currency/banks/cad/
      http://minfin.com.ua/currency/banks/aud/
      http://minfin.com.ua/currency/banks/byr/
      http://minfin.com.ua/currency/banks/huf/
      http://minfin.com.ua/currency/banks/czk/
      http://minfin.com.ua/currency/banks/ils/
    ].each do |filename|

    end
  end
end