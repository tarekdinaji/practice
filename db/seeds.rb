Category.create(name: "Men")
Category.create(name: "Women")
Category.create(name: "Shirt", category_id: 1)
Category.create(name: "Hijab", category_id: 2)

Product.create(name: "Polo_shirt_1", description: "Mens wear", price: 40, category_id: 3)
Product.create(name: "T-shirt_1", description: "Mens wear", price: 25, category_id: 3)
Product.create(name: "Gree_44", description: "sgsdgg", price: 90, category_id: 4)
Product.create(name: "Voo_45", description: "uhshgs", price: 120, category_id: 4)

Variant.create(color: "red", size: "44", sku: "773450", product_id: 1)
Variant.create(color: "green", size: "38", sku: "695470", product_id: 2)
Variant.create(color: "yellow", size: "28", sku: "290704", product_id: 3)
Variant.create(color: "white", size: "24", sku: "1095385", product_id: 4)