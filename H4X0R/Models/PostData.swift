//
//  PostData.swift
//  H4X0R
//
//  Created by Gabriel Sabanai on 25/11/24.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String { objectID }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
