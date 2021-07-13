class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :buyer
      t.string :description
      t.decimal :unit_price
      t.integer :quantity
      t.string :address
      t.string :provider

      t.timestamps
    end
  end
end
