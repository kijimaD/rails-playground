json.extract! sc_product, :id, :name, :price, :created_at, :updated_at
json.url sc_product_url(sc_product, format: :json)
