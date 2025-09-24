//
//  ProductsView.swift
//  furniture-swift
//
//  Created by Mac pro on 24/09/25.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: column, spacing: 20) {
                ForEach(productList, id: \.id) { product in
                    ProductCardView(product: product)
                }
            }
            .padding()
        }
        .navigationTitle("All Furniture")
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .environmentObject(CartManager())
    }
}
