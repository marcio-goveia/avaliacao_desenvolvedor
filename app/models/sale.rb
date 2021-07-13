class Sale < ApplicationRecord
  def self.import(file)
    CSV.foreach(file.path, headers: true, col_sep: "\t") do |row|  
      Sale.create! row.to_hash
    end
  end

  def self.total_sale
    Sale.all.reduce(0) { |total, sale| total + (sale.quantity * sale.unit_price)}
  end


end
