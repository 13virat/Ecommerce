//
//  CartButton.swift
//  furniture-swift
//
//  Created by Mac pro on 21/09/25.
//

import SwiftUI

struct CartButton: View {
    var numberOfProduct: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "bag.fill")
                .padding(5)
                .foregroundColor(.black)
            if numberOfProduct > 0 {
                Text("\(numberOfProduct)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProduct: 1)
    }
}
