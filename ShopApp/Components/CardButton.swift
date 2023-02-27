//
//  CardButton.swift
//  ShopApp
//
//  Created by Максимилиан Мальсагов on 27.02.2023.
//

import SwiftUI

struct CardButton: View {
    
    var numberOfProducts: Int
    
    var body: some View {
        
        ZStack(alignment: .topTrailing)   {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption).bold()
                    .foregroundColor(.white)
                    .frame(width: 15,height: 15)
                    .background(.red)
                    .cornerRadius(50)
            }
        }
        
    }
}

struct CardButton_Previews: PreviewProvider {
    static var previews: some View {
        CardButton(numberOfProducts: 1)
    }
}
