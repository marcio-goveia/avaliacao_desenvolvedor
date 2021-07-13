json.extract! sale, :id, :buyer, :description, :unit_price, :quantity, :address, :provider, :created_at, :updated_at
json.url sale_url(sale, format: :json)
