//
//  ProductModel.swift
//  chucherias
//
//  Created by Aldo Arias on 9/7/24.
//

import SwiftUI

// Product Model
struct Product: Identifiable {
    var id: UUID = .init()
    var name: String
    var category: String
    var image: String
    var color: Color
    var price: Double
}

// Sample products
var productList: [Product]  = [
    Product(name: "Good Source", category: "Pasteles", image: "image1", color: .pink, price: 1.0),
    Product(name: "Unreal Muffins", category: "Pasteles", image: "image1", color: .yellow, price: 2.0),
    Product(name: "Twister Chips", category: "Pasteles", image: "image1", color: .red, price: 3.0),
    Product(name: "Coconut Chips", category: "Saludables", image: "image1", color: .green, price: 4.0),
    Product(name: "Regular Nature", category: "Saludables", image: "image1", color: .blue, price: 5.0),
    Product(name: "Dark Russet", category: "Bevidas", image: "image1", color: .brown, price: 6.0),
    Product(name: "Smiths Ships", category: "Bevidas", image: "image1", color: .orange, price: 7.0),
    Product(name: "Deep River", category: "Bevidas", image: "image1", color: .purple, price: 8.0)
]
