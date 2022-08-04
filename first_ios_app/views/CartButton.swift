//
//  CartComponent.swift
//  first_ios_app
//
//  Created by Debdutta Panda on 03/08/22.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 0.579, saturation: 1.0, brightness: 1.0))
                    .cornerRadius(50)
            }
        }
    }
}

struct CartComponent_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 6)
    }
}
