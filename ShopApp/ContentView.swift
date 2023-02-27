//
//  ContentView.swift
//  ShopApp
//
//  Created by Максимилиан Мальсагов on 27.02.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cardManager = CardManager()
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cardManager)
                        
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Sweater Shop"))
            .toolbar {
                NavigationLink {
                    CardView()
                        .environmentObject(cardManager)

                }label: {
                    CardButton(numberOfProducts: cardManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
