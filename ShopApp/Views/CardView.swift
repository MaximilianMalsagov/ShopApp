//
//  CardView.swift
//  ShopApp
//
//  Created by Максимилиан Мальсагов on 27.02.2023.
//

import SwiftUI

struct CardView: View {
    @EnvironmentObject var cardmanager: CardManager
    var body: some View {
        
        ScrollView {
            if cardmanager.products.count > 0 {
                ForEach(cardmanager.products, id: \.id) {
                    product in
                    ProductRow(product: product)
                }
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cardmanager.total).00")
                        .bold()
                }
                .padding()
            } else {
                
                
                Text("your cart is empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
