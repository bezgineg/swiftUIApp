//
//  FeedScreen.swift
//  swiftUIHomeTest
//
//  Created by Евгений on 01.03.2022.
//

import SwiftUI

struct News: Hashable {
    let name: String
}

struct FeedScreen: View {
    private var news = [
        News(name: "First news"),
        News(name: "Second news"),
        News(name: "Third news"),
        News(name: "Fourth news"),
        News(name: "Fifth news")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(news, id: \.self) { news in
                    NavigationLink(
                        destination: Text(news.name),
                        label: {
                            Text(news.name)
                        }
                    )
                }
            }
        }
        .navigationTitle("Feed")
    }
}

struct FeedScreen_Previews: PreviewProvider {
    static var previews: some View {
        FeedScreen()
    }
}
