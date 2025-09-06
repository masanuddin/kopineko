//
//  HomeView.swift
//  KopiNeko
//
//  Created by prk on 9/6/25.
//

let categories = ["Expresso", "Latte", "Cold Brew"]

import SwiftUI

struct HomeView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 20){
                    Text("Welcome to KopiNeko").font(.largeTitle).bold().padding(.top, 20)
                    
                    Text("Choose your favourite coffee below").foregroundColor(.gray)
                    
                    LazyVGrid(columns: columns, spacing: 20){
                        ForEach(coffeeMenu) {
                            coffee in
                            NavigationLink(destination: CoffeeDetailView(coffee: coffee)){
                                CoffeeDetailView(coffee: coffee)
                            }
                        }
                    }.padding()
                }
            }
            List(coffeeMenu) { coffee in
                NavigationLink(destination: CoffeeDetailView(coffee: coffee)) {
                    HStack {
                        Text(coffee.name)
                        Spacer()
                        Text("Rp \(Int(coffee.price))").foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Coffee Menu")
        }
    }
}

#Preview {
    HomeView()
}

