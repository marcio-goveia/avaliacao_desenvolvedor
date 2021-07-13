class Sale < ApplicationRecord
  validates_presence_of :buyer, :description, :address, :provider
  validates :unit_price, presence: true, numericality: { greater_than: 0}
  validates :quantity, presence: true, numericality: { greater_than: 0, only_integer: true}

  def self.import(file)
    CSV.foreach(file.path, headers: true, col_sep: "\t") do |row|  
      Sale.create! row.to_hash
    end
  end

  def self.total_sale
    Sale.all.reduce(0) { |total, sale| total + (sale.quantity * sale.unit_price)}
  end

end
