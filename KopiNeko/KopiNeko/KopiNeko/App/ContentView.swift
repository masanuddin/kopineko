//
//  ContentView.swift
//  KopiNeko
//
//  Created by prk on 9/6/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        TabView {
            HomeView().tabItem { Label("Home", systemImage: "house.circle.fill").foregroundColor(.brown)}.tag(1)
            OrderView().tabItem { Label("Order", systemImage: "cup.and.saucer.fill")}.tag(2)
            ProfileView().tabItem { Label("Profile", systemImage: "person.crop.circle") }.tag(3)
        }
    }
}

#Preview {
    ContentView()
}
