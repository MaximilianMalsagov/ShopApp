//
//  CardManager.swift
//  ShopApp
//
//  Created by Максимилиан Мальсагов on 27.02.2023.
//

import Foundation

class CardManager: ObservableObject {
    
    @Published private(set) var products: [Product] = []
    @Published private(set) var total : Int = 0
    
    func addToCard(product: Product) {
        products.append(product)
        total += product.price
    }
    func removeFromCard(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
            
        
    }
}
