//
//  NetworkManager.swift
//  H4X0R
//
//  Created by Gabriel Sabanai on 25/11/24.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()

    func fetchData() {
        guard let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let error {
                print ("Error: \(error.localizedDescription)")
            } else {
                let decoder = JSONDecoder()
                guard let data else {return}
                
                do {
                    let response =  try decoder.decode(Results.self, from: data)

                    DispatchQueue.main.async {
                        self.posts = response.hits
                    }
                } catch {
                    print(error)
                }
                /*guard let data, let response = try? decoder.decode(Results.self, from: data) else {*/

                print (response ?? "")
            }
        }
        task.resume()
    }
}
