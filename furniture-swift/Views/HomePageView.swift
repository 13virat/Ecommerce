//
//  HomePageView.swift
//  furniture-swift
//
//  Created by Mac pro on 21/09/25.
//

import SwiftUI

struct HomePageView: View {
    @EnvironmentObject var CartManager: CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    AppBar()
                    SearchView()
                    ImageSliderView()
                    HStack{
                        Text("New Arrival")
                            .font(.title2)
                            .fontWeight(.medium)
                        Spacer()
                        Image(systemName: "circle.grid.2x2.fill")
                            .foregroundColor(Color("kPrimary"))
                    }
                    .padding()
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(productList, id: \.id){product in NavigationLink{
                                Text(product.name)
                            }label: {
                                ProductCardView( product: product)
                                    .environmentObject(furniture_swift.CartManager())
                            }
                            }
                        }.padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .environmentObject(CartManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var CartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack{
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .padding(.trailing)
                    
                    Text("Delhi, India")
                        .font(.title2)
                        .foregroundColor(.gray)
                    Spacer()
                    NavigationLink(destination: Text("")){
                        CartButton(numberOfProduct: CartManager.products.count)
                    }
                }
                Text("Find the \nLuxurious")
                    .font(.largeTitle .bold() )
                + Text(" Furniture")
                    .font(.largeTitle .bold() )
                    .foregroundColor(Color("kPrimary"))
            }
        }
        .padding()
        .environmentObject(furniture_swift.CartManager())
    }
}
