class Sale < ApplicationRecord
  validates_presence_of :buyer, :description, :address, :provider
  validates :unit_price, presence: true, numericality: { greater_than: 0}
  validates :quantity, presence: true, numericality: { greater_than: 0, only_integer: true}

  def old_import(file)
    CSV.foreach(file.path, headers: true, col_sep: "\t") do |row|
      cols = Sale.new.attributes.except("id", "created_at", "updated_at").keys
      sale = Sale.new
    
      cols.each_with_index do |item, index|
        sale[item] = row[index]
      end
      sale.save
    end
  end

  def self.total_sale
    Sale.all.reduce(0) { |total, sale| total + (sale.quantity * sale.unit_price)}
  end

end
