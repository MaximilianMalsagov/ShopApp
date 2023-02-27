//
//  Product.swift
//  ShopApp
//
//  Created by Максимилиан Мальсагов on 27.02.2023.
//

import Foundation


struct Product: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    
}

var productList = [ Product(name: "Orange sweater", image: "sweater1", price: 54),

                    Product(name: "Red sweater", image: "sweater2", price: 353),
                    Product(name: "Sand sweater", image: "sweater3", price: 654),
                    Product(name: "Sea sweater", image: "sweater4", price: 24),
                    Product(name: "Cream sweater", image: "sweater5", price: 33),
                    Product(name: "Beige sweater", image: "sweater6", price: 64),
                    Product(name: "Gray sweater", image: "sweater7", price: 54),
                    Product(name: "Mink sweater", image: "sweater8", price: 80)]
