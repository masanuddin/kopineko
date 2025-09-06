//
//  ProfileView.swift
//  KopiNeko
//
//  Created by prk on 9/6/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.crop.circle.fill").resizable().scaledToFit().frame(width: 100, height: 100).foregroundColor(.brown).padding(.top, 40)
            
            Text("Nico nico nii").font(.title2).bold()
            
            Text("Member since 2025").foregroundColor(.gray)
            
            Divider().padding()
            
            List{
                Label("My Orders", systemImage: "cart.fill")
                Label("Favourites", systemImage: "heart.fill")
                Label("Settings", systemImage: "gearshape.fill")
                Label("Help & Support", systemImage: "questionmark.circle.fill")
            }
        }.navigationTitle("Profile")
    }
}

#Preview {
    ProfileView()
}
