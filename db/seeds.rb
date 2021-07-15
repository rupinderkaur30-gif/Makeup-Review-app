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

#user1 = User.create(name: Faker::Name.name, age: Faker::Number.between(from: 20, to: 100), password: "password", email: Faker::Internet.email )
user = User.create(name: "rupi", email: "rupi123@gmail.com", age: 27, password: "rupi")
brand1 = Brand.create(name: "Too Faced")
brand2 = Brand.create(name: "Bobby Brown")
brand3 = Brand.create(name: "Tarte")
brand4 = Brand.create(name: "Laura Mercier")
brand5 = Brand.create(name: "Fenty Beauty")

product1 = Product.create(name: "Too Faced Gives Back Lipstick", price: 22.05, brand_id: brand1.id, details: "CRUELTY-FREE SHEER CREAM LIPSTICK", description: "Too Faced founders Jerrod and Jeremy’s adorable pup Clover is back! This time he’s teamed up with his gal pal Belinda Carlisle – iconic pop star and passionate animal rights champion – to create this super cute, totally vegan lipstick infused with rich sunflower wax and nourishing vitamin E in Belinda’s signature petal nude shade that every bitch at the dog park will be lusting after.", category: "Lipstick", image: "https://www.toofaced.com/media/export/cms/products/1000x1000/2f_sku_133572_1000x1000_0.jpg" )

product2 = Product.create(name: "Born This Way Matte Foundation" , price: 40.00, brand_id: brand1.id, details: "24 HOUR UNDETECTABLE SUPER LONGWEAR FOUNDATION", description: "This oil-free, 24-hour matte foundation masterfully diffuses the line between makeup and skin. Our true matte formula stays completely color true while covering imperfections to reveal the all-day, shine-free look of naturally flawless skin. Lightweight wear and coverage so undetectable, they’ll think you were Born This Way.", category: "Foundation", image: "https://www.toofaced.com/media/export/cms/products/1000x1000/2f_sku_117793_1000x1000_0.jpg")

prouct3 = Product.create(name: "MICRO BROW PENCIL", price: 34.00, brand_id: brand2.id, details: "Ultra-precise brow tool", description: "An ultra-precise pencil with 24-hour, brow-true color. Designed to effortlessly draw hair-like strokes to pinpoint sparse spots, extend tails, and add detailed definition. A blend of emollient oils and waxes provides creamy glide and lasting, waterproof, humidity- and sweat-resistant wear.  
Free of: Paraben-free; phthalate-free; sulfate-free; sulfite-free; free of animal by-products; dermatologist- and ophthalmologist-tested", category: "Brow Pencil", image: "https://www.bobbibrowncosmetics.com/media/export/cms/products/v2_1080x1080/bb_sku_ENJN09_1080x1080_0.jpg")

product4 = Product.create(name: "FACE AND CHEEK PALETTE", price: 48.00, brand_id: brand2.id, details: "Bronzer and cheek color for a warm, natural look", description: "The essential face palette co-created with artists to enhance the skin you’re in. The palette includes our Bronzing Powder, Illuminating Bronzing Powder, and Blush in a trio of complementary, skin-warming shades for a fresh, natural look", category: "PALETTE", image: "https://www.bobbibrowncosmetics.com/media/export/cms/products/v2_1080x1080/bb_sku_EPYL01_1080x1080_0.jpg")

product5 = Product.create(name: "SHEER FINISH PRESSED POWDER", price: 44.00,brand_id: brand2.id, details: "Portable, oil-absorbing powder", description: "Stands up to shine. Stays in sync with your skin. Our lightweight, breathable pressed powder sets and perfects foundation for a smooth, your-skin-but-better look. Evens out skin tone and provides all-day shine control for a natural matte finish.", category: "Powder", image: "https://www.bobbibrowncosmetics.com/media/export/cms/products/v2_1080x1080/bb_sku_ENPT06_1080x1080_0.jpg")

product6 = Product.create(name: "shape tape™ concealer", price: 29.00, brand_id: brand3.id, details: "#1 concealer brand!*", description: "full coverage formula for 16 hrs of flawless wear
smooths & brightens to make eyes appear lifted
crease-proof formula won’t cake or settle
tape technology™ helps smooth & blur appearance of fine lines & wrinkles
applies easily with jumbo speed smoother", category: "Concealer", image: "https://tartecosmetics.com/dw/image/v2/BBPW_PRD/on/demandware.static/-/Sites-master-catalog-tarte/default/dw6676a234/836/MAIN/836-shape-tape-concealer-medium-honey-MAIN.jpg?sw=2000&sh=2000&sm=fit")

product7 = Product.create(name: "hydroflex™ serum foundation", price: 39.00,brand_id: brand3.id, details: "The yoga pants of foundation", description: "serum foundation lets the true you shine through
hydroflex technology™ moves with your skin so it never creases or cakes
medium coverage, featherlight formula for a natural finish that looks & feels like your skin
super serum complex with 8 types of hyaluronic acid promotes better bare skin", category: "Foundation", image: "https://tartecosmetics.com/dw/image/v2/BBPW_PRD/on/demandware.static/-/Sites-master-catalog-tarte/default/dwc2767c91/2224/ImageUpdate_5.24/MAIN/2224-hydroflex-serum-foundation-35H-medium-honey-MAIN.jpg?sw=2000&sh=2000&sm=fit")

product8 = Product.create(name: "RoseGlow Highlighting Powder", price: 30.00, brand_id: brand4.id, details: "A limited edition rosy neutral highlighting powder that self-adjust to your complexion", description: "The finely-milled, light reflecting pearls brings subtle, natural dewy look to add life to all skin tones. The self-adjusting, demi-transparent micas blend easily into the skin so the skin is left rosy, gold, and completely illuminated.", category: "Highlighter", image: "https://lauramercier.scene7.com/is/image/lauramercier/laura_mercier_RoseGlow_Highlighting_Powder_RoseGlow~~~12721521-1?$lm_product_zoom$")

product9 = Product.create(name: "RoseGlow Caviar Stick Eye Color", price: 29.00, brand_id: brand4.id, details: "Laura Mercier's iconic creamy Caviar Stick eyeshadow in a new collection of rosy neutral shades that self-adjust to your complexion and bring life and light to your makeup.", description: "This long-wearing versatile eyeshadow stick delivers effortless application with up to 12 hours of high-impact color. Highly pigmented shades glide seamlessly onto lids. Creamy formula gives you plenty of time to smudge, blend, line, fill or define, so it's easy to create any look", category: "Eyeshadow Stick", image: "https://lauramercier.scene7.com/is/image/lauramercier/laura_mercier_RoseGlow_Caviar_Stick_Eye_Color_Kiss_from_a_Rose~~~12717683-3?$lm_product_zoom$")

product10 = Product.create(name: "PRO FILT'R INSTANT RETOUCH PRIMER", price: 32.00, brand_id: brand5.id, details: "SMOOTH, PORE-DIFFUSING FINISH.
EXTENDED MAKEUP WEAR.", description: "A universal makeup primer for all skin types, this shine-stopping, pore-diffusing primer smooths the way for better foundation application and longer wear with an instant retouch effect.", category: "Concealer", image: "https://cdn.shopify.com/s/files/1/0341/3458/9485/products/22353_200x.jpg?v=1614393975")