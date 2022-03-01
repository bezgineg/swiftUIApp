//
//  FavoritesScreen.swift
//  swiftUIHomeTest
//
//  Created by Евгений on 01.03.2022.
//

import SwiftUI

struct FavoritesScreen: View {
    @State private var showModal = false
    
    var body: some View {
        VStack {
            Text("Favorites")
            Button("Show modal") {
                showModal.toggle()
                print(showModal)
            }
            .padding()
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(12)
        }
        .sheet(
            isPresented: $showModal,
            onDismiss: {
                print(showModal)
            }
        ) {
            Text("This is Modal view")
                .foregroundColor(.green)
        }
    }
}

struct FavoritesScreen_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesScreen()
    }
}
