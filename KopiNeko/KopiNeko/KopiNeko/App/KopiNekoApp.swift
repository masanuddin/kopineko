//
//  KopiNekoApp.swift
//  KopiNeko
//
//  Created by prk on 9/6/25.
//

struct Coffee: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let price: Double
}

let coffeeMenu = [
    // Expresso
    Coffee(name: "Espresso", category: "Expresso", price: 20000),
    Coffee(name: "Doppio", category: "Expresso", price: 25000),
    Coffee(name: "Ristretto", category: "Expresso", price: 22000),
    Coffee(name: "Machiato", category: "Expresso", price: 24000),
    Coffee(name: "Cortado", category: "Expresso", price: 26000),
    Coffee(name: "Cappucino", category: "Expresso", price: 27000),
    Coffee(name: "Flat White", category: "Expresso", price: 28000),
    Coffee(name: "Latte", category: "Expresso", price: 28000),
    Coffee(name: "Mocha", category: "Expresso", price: 30000),
    Coffee(name: "Affogato", category: "Expresso", price: 32000),
    
    // Latte
    Coffee(name: "Vanilla Latte", category: "Latte", price: 29000),
    Coffee(name: "Caramel Latte", category: "Latte", price: 30000),
    Coffee(name: "Hazelnut Latte", category: "Latte", price: 31000),
    Coffee(name: "Matcha Latte", category: "Latte", price: 33000),
    Coffee(name: "Sea Salt Latte", category: "Latte", price: 33000),
    
    
    // Cold Brew
    Coffee(name: "Cold Brew", category: "Cold Brew", price: 27000),
    Coffee(name: "Nitro Cold Brew", category: "Cold Brew", price: 35000),
    Coffee(name: "Ice Americano", category: "Cold Brew", price: 24000),
    Coffee(name: "Iced Latte", category: "Cold Brew", price: 28000),
    Coffee(name: "Frappucino", category: "Cold Brew", price: 36000),
]

import SwiftUI

@main
struct KopiNekoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
