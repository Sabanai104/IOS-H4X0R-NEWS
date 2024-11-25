//
//  ContentView.swift
//  H4X0R
//
//  Created by Gabriel Sabanai on 25/11/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager: NetworkManager

    init(networkManager: NetworkManager = NetworkManager()) {
        self.networkManager = networkManager
        Task {
            networkManager.fetchData()
        }
    }

    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
    }
}

#Preview {
    ContentView()
}
