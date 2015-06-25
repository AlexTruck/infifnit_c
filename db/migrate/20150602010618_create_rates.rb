class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.string :currency
      t.string :buy
      t.string :sale

      t.timestamps null: false
    end
  end
end
