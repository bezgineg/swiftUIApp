//
//  FeedScreen.swift
//  swiftUIHomeTest
//
//  Created by Евгений on 01.03.2022.
//

import SwiftUI

struct News: Hashable {
    let name: String
    let tag: Int
}

struct FeedScreen: View {
    private var news = [
        News(name: "First news", tag: 0),
        News(name: "Second news", tag: 1),
        News(name: "Third news", tag: 2),
        News(name: "Fourth news", tag: 3),
        News(name: "Fifth news", tag: 4)
    ]
    
    @EnvironmentObject var profileViewModel: ProfileViewModel
    
    var body: some View {
        NavigationView {
            List {
                ForEach(news, id: \.self) { news in
                    NavigationLink(
                        destination: Text(news.name),
                        tag: news.tag,
                        selection: $profileViewModel.currentLink,
                        label: {
                            Text(news.name)
                        }
                    )
                }
            }
            .navigationTitle("Feed")
        }
        .navigationViewStyle(.stack)
    }
}
