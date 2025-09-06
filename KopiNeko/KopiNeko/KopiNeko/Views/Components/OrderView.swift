//
//  OrderView.swift
//  KopiNeko
//
//  Created by prk on 9/6/25.
//



import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(categories, id: \.self) { category in
                    Section(header: Text(category).font(.headline)) {
                        ForEach(coffeeMenu.filter { $0.category == category }) { coffee in
                            NavigationLink(destination: CoffeeDetailView(coffee: coffee)) {
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(coffee.name)
                                            .font(.subheadline)
                                        Text("Rp \(Int(coffee.price))")
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                    Image(systemName: "cup.and.saucer.fill")
                                        .foregroundColor(.brown)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("☕ Coffee Menu")
        }
    }
}


#Preview {
    OrderView()
}
