//
//  Webview.swift
//  TelCo
//
//  Created by TooKool Tech on 5/31/20.
//  Copyright © 2020 4-in-1 Telecommunications. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView()
            }
        let request = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(request)
        return wkWebview
    }
    
    func updateUIView(_ uiView: WKWebView, context:
      UIViewRepresentableContext<Webview>) {
        
    }
}
