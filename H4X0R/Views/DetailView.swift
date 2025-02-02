//
//  DetailView.swift
//  H4X0R
//
//  Created by Gabriel Sabanai on 25/11/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
