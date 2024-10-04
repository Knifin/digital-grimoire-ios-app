//
//  ContentView.swift
//  Digital Grimoire
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebView(url: "https://app.playclocktower.com/")
    }
}

struct WebView: UIViewRepresentable {
    let _view: WKWebView
    let _url: String
    
    init(url: String) {
        _view = WKWebView(frame: .zero)
        _url = url
    }
    
    func makeUIView(context: Context) -> WKWebView {
        return _view
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        _view.load(URLRequest(url: URL(string: _url)!, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 1))
    }
}
