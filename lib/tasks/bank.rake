namespace :bank do

  desc "Fetch bank"
  task fetch: :environment do
    require 'nokogiri'
    require 'open-uri'

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
    ].each do |url|

      doc = Nokogiri::HTML(open(url))

      currency = doc.css('.mfm-tab-menu .active').text.squish

      doc.css('.list tr').each do |node|
        name = node.css('.mfcur-table-bankname').text.squish
        sale = node.css('.mfm-pl0').first.text.squish
        buy = node.css('.mfm-pr0').first.text.squish

        @bank = Bank.find_or_create_by(name: name)
        @bank.rates.create(currency: currency, buy: buy, sale: sale)
      end
    end
  end
end