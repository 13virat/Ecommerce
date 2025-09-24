//
//  Product.swift
//  furniture-swift
//
//  Created by Mac pro on 20/09/25.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
    var width: String
    var height: String
    var diameter: String
}

var productList = [
    Product(
        name:"Leather Couch",
        image: "fn1",
        description: "A premium leather couch designed for both comfort and durability. Its sleek design makes it a perfect fit for modern living rooms. Crafted with high-quality materials, it offers a luxurious seating experience.",
        supplier: "IKEA",
        price: 350,
        width: "220 cm",
        height: "90 cm",
        diameter: "105"
    ),
    Product(
        name:"Nice Couch",
        image: "fn2",
        description: "A stylish fabric couch that blends well with any interior decor. Designed for everyday use, it provides excellent comfort with soft cushions. Its neutral design makes it versatile for any space.",
        supplier: "Walmart",
        price: 350,
        width: "200 cm",
        height: "85 cm",
        diameter: "120"
    ),
    Product(
        name:"Gray Couch",
        image: "fn3",
        description: "A modern gray couch with a clean and minimal look. The sturdy frame ensures durability, while the fabric upholstery adds a touch of elegance. Perfect for contemporary homes and small apartments.",
        supplier: "Home Depo",
        price: 350,
        width: "210 cm",
        height: "88 cm",
        diameter: "180"
    ),
    Product(
        name:"Beautiful Couch",
        image: "fn4",
        description: "A beautifully crafted couch with a timeless design. The plush cushions and supportive backrest provide maximum relaxation. Its elegant finish makes it an ideal centerpiece for any living room.",
        supplier: "IKEA",
        price: 350,
        width: "215 cm",
        height: "92 cm",
        diameter: "115"
    ),
    Product(
        name:"Outdoor Couch",
        image: "fn5",
        description: "A durable outdoor couch built to withstand all weather conditions. Featuring water-resistant fabric and a sturdy frame, it ensures comfort and longevity. Great for patios, balconies, and garden spaces.",
        supplier: "Home Depo",
        price: 350,
        width: "190 cm",
        height: "80 cm",
        diameter: "210"
    )
]
