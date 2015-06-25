class CreateBanksRates < ActiveRecord::Migration
  def change
    create_table :banks_rates, id: false do |t|
      t.belongs_to :bank, index: true
      t.belongs_to :rate, index: true

    end
  end
end
