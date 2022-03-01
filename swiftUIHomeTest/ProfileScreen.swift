//
//  ProfileScreen.swift
//  swiftUIHomeTest
//
//  Created by Евгений on 01.03.2022.
//

import SwiftUI

struct ProfileScreen: View {
    
    @Binding var selection: Int
    @EnvironmentObject var profileViewModel: ProfileViewModel
    @State var currentLink: Int? = 0
    
    var body: some View {
        VStack {
            Text("ProfileScreen")
            Button("Open second tab") {
                selection = 1
                setupCurrentLink()
            }
            .padding(50)
            .foregroundColor(.black)
            .background(.blue)
            .cornerRadius(16)
        }
    }
    
    private func setupCurrentLink() {
        profileViewModel.currentLink = self.currentLink
        if let currentLink = currentLink, currentLink < 4 {
            self.currentLink = currentLink + 1
        } else {
            self.currentLink = 0
        }
    }
}
