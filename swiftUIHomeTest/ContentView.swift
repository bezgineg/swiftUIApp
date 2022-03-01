//
//  ContentView.swift
//  swiftUIHomeTest
//
//  Created by Евгений on 01.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView(selection: $selection) {
            FeedScreen()
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("Feed")
                }
                .tag(0)
            ProfileScreen()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .tag(0)
            FavoritesScreen()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favorites")
                }
                .tag(0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
