//
//  ContentView.swift
//  Clothing_App
//
//  Created by NIBM-LAB04-PC05 on 2024-03-16.
//

//import SwiftUI
//
//struct ContentView: View {
//    @StateObject var cartManager=CartManager()
//    var columns=[GridItem(.adaptive(minimum: 160, maximum: 20))]
//    
//    var body: some View {
//        NavigationView{
//            ScrollView{
//                LazyVGrid(columns:columns,spacing: 20){
//                    ForEach(productList,id:\.id){
//                        product in ProductCard(product:product)
//                            .environmentObject(CartView(cartManager))
//                    }
//                }
//                .padding()
//            }
//            .navigationTitle(Text("Sweater Shop"))
//            .toolbar{
//                NavigationLink{
//                    CartView()
//                        .environmentObject(cartManager)
//                } label: {
//                    CartButton(numberOfProducts:cartManager.products.count)
//                }
//            }
//        }
//        .navigationViewStyle(StackNavigationViewStyle())
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Sweater Shop"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
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
