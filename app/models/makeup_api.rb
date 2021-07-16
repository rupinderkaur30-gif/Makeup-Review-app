class MakeupApi

    def self.fetch
        body = HTTP.get("https://makeup-api.herokuapp.com/api/v1/products.json").body
        body.each do |data|
            brand = Brand.find_or_create_by(name: data["brand"])
            byebug
            Product.create(brand_id: brand.id, name: data["name"], price: data["price"], description: data["description"], image: data["image_link"], category: data["category"], details: data["product_type"])
        end
    end
end

