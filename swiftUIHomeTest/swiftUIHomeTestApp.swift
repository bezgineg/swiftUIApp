//
//  swiftUIHomeTestApp.swift
//  swiftUIHomeTest
//
//  Created by Евгений on 01.03.2022.
//

import SwiftUI

@main
struct swiftUIHomeTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ProfileViewModel())
        }
    }
}
