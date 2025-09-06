//
//  CoffeeDetailView.swift
//  KopiNeko
//
//  Created by prk on 9/6/25.
//

import SwiftUI

struct CoffeeDetailView: View {
    let coffee: Coffee
    @State private var ordered = false
    
    var body: some View {
        VStack(spacing: 10) {
            
            Image(systemName: "cup.and.saucer.fill").resizable().scaledToFit().frame(height: 60).foregroundColor(.brown)
            
            Text(coffee.name).font(.subheadline).bold()
            
            Text("Rp \(Int(coffee.price))").font(.caption).foregroundColor(.secondary)
            
            Button(action: {
                ordered = true
            }) {
                Text(ordered ? "Ordered" : "Order Now").padding().frame(maxWidth: 250).background(ordered ? Color.green : Color.brown).foregroundColor(.white).cornerRadius(12)
            }
        }.padding().frame(maxWidth: .infinity).frame(height: 250).background(Color.white).cornerRadius(16).shadow(radius: 5)
    }
}

#Preview {
    CoffeeDetailView(coffee: Coffee(name: "Espresso", category: "Expresso", price: 20000))
}
