//
//  Product.swift
//  Clothing_App
//
//  Created by NIBM-LAB04-PC05 on 2024-03-22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Orange sweater", image: "sweater1", price: 54),
                   Product(name: "Red wine sweater", image: "sweater2", price: 89),
                   Product(name: "Sand sweater", image: "sweater3", price: 79),
                   Product(name: "Sea sweater", image: "sweater4", price: 94),
                   Product(name: "Cream sweater", image: "sweater5", price: 99),
                   Product(name: "Beige sweater", image: "sweater6", price: 65),
                   Product(name: "Grey sweater", image: "sweater7", price: 54),
                   Product(name: "Mink sweater", image: "sweater8", price: 83)]
