# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Product.destroy_all
Brand.destroy_all
Review.destroy_all

user1 = User.create(name: Faker::Name.name, age: Faker::Number.between(from: 20, to: 100), password: "password", email: Faker::Internet.email )
brand1 = Brand.create(name: "Too Faced")
brand2 = Brand.create(name: "Bobby Brown")
brand3 = Brand.create(name: "Tarte")
brand4 = Brand.create(name: "Laura Mercier")
brand5 = Brand.create(name: "Fenty Beauty")

product1 = Product.create(name: "Too Faced Gives Back Lipstick", price: 22.05, brand_id: brand1.id, details: "CRUELTY-FREE SHEER CREAM LIPSTICK" , description: "Too Faced founders Jerrod and Jeremy’s adorable pup Clover is back! This time he’s teamed up with his gal pal Belinda Carlisle – iconic pop star and passionate animal rights champion – to create this super cute, totally vegan lipstick infused with rich sunflower wax and nourishing vitamin E in Belinda’s signature petal nude shade that every bitch at the dog park will be lusting after.", category: "Lipstick" , image: "https://www.toofaced.com/media/export/cms/products/1000x1000/2f_sku_133572_1000x1000_0.jpg" )

