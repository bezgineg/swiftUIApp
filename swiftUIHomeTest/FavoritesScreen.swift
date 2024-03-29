//
//  FavoritesScreen.swift
//  swiftUIHomeTest
//
//  Created by Евгений on 01.03.2022.
//

import SwiftUI

struct FavoritesScreen: View {
    @State private var showModal = false
    @State private var screenText = "Favorites"
    
    var body: some View {
        VStack {
            Text(screenText)
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
                screenText = "Modal view dismissed"
                print(showModal)
            }
        ) {
            Text("This is Modal view")
                .foregroundColor(.green)
            ActivityIndicator()
        }
    }
}

struct ActivityIndicator: UIViewRepresentable {

    public func makeUIView(context: Context) -> UIActivityIndicatorView {
        UIActivityIndicatorView(style: .large)
    }

    public func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        uiView.startAnimating()
    }
}
