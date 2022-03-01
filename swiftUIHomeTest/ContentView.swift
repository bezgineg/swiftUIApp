//
//  ContentView.swift
//  swiftUIHomeTest
//
//  Created by Евгений on 01.03.2022.
//

import SwiftUI

final class ProfileViewModel: ObservableObject {
    @Published var currentLink: Int? = nil
}

struct ContentView: View {
    
    @State private var selection = 0
    @State private var linkTag: Int? = 0
    
    var body: some View {
        TabView(selection: $selection) {
            ProfileScreen(selection: $selection)
                .tabItem {
                    Image(systemName: "newspaper.fill")
                    Text("Profile")
                }
                .tag(0)
            FeedScreen()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Feed")
                }
                .tag(1)
            FavoritesScreen()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favorites")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
