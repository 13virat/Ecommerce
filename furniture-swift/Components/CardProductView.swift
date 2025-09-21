//
//  CardProductView.swift
//  furniture-swift
//
//  Created by Mac pro on 21/09/25.
//

import SwiftUI

struct CardProductView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CardProductView_Previews: PreviewProvider {
    static var previews: some View {
        CardProductView()
            .environmentObject(CartManager())
    }
}
