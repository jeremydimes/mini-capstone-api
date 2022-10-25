Supplier.create(name: "Amazon", email: "amazon@test.com", phone_number: "3456789")
Supplier.create(name: "Ebay", email: "ebay@test.com", phone_number: "9876543")

Product.create({ supplier_id: 1, name: "CarToy", price: 10, description: "Cool" })

Product.create({ supplier_id: 2, name: "TrainToy", price: 7, description: "Choo Choo" })

Product.create({ supplier_id: 1, name: "PlaneToy", price: 4, description: "Fly" })

Image.create(product_id: 1, url: "https://5.imimg.com/data5/ER/VU/MY-40356607/gla-250x250.jpeg")

Image.create(product_id: 2, url: "https://images-na.ssl-images-amazon.com/images/W/WEBP_402378-T1/images/I/71aP9021mzL.__AC_SX300_SY300_QL70_FMwebp_.jpg", "https://images-na.ssl-images-amazon.com/images/W/WEBP_402378-T1/images/I/319G1TINm6L.__AC_SY300_SX300_QL70_FMwebp_.jpg")

Image.create(product_id: 1, url: "https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/71xmrvazuCL._AC_SY300_SX300_.jpg")
product = Product.new(
  name: "CarToy",
  price: 10,
  image_url: "https://5.imimg.com/data5/ER/VU/MY-40356607/gla-250x250.jpeg",
  description: "Cool",
)
product.save

product = Product.new(
  name: "TrainToy",
  price: 7,
  image_url: "https://images-na.ssl-images-amazon.com/images/W/WEBP_402378-T1/images/I/71aP9021mzL.__AC_SX300_SY300_QL70_FMwebp_.jpg",
  description: "Choo Choo",
)
product.save

product = Product.new(
  name: "
  PlaneToy",
  price: 4,
  image_url: "https://m.media-amazon.com/images/W/WEBP_402378-T1/images/I/71xmrvazuCL._AC_SY300_SX300_.jpg",
  description: "Fly",
)
product.save
