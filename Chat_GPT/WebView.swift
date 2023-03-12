//
//  WebView.swift
//  Chat_GPT
//
//  Created by Md Jubayer Hossain on 12/3/23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    @Binding var url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.navigationDelegate = context.coordinator
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        webView.load(URLRequest(url: url))
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebView

        init(_ parent: WebView) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            parent.url = webView.url!
        }
    }
}



