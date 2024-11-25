//
//  WebView.swift
//  H4X0R
//
//  Created by Gabriel Sabanai on 25/11/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let urlString, let url = URL(string: urlString) else {return}

        let response = URLRequest(url: url)
        uiView.load(response)
    }
}
