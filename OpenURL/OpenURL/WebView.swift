//
//  WebView.swift
//  OpenURL
//
//  Created by spacefrog on 2021/02/12.
//

import SwiftUI

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = UIWebView
    
    func makeUIView(context: Context) -> UIWebView {
        let webView = UIWebView()
        let html: String = """
<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<a href="test://open">Open test://open link</h1>

</body>
</html>
"""
        webView.loadHTMLString(html, baseURL: URL(string: "localhost"))
        webView.backgroundColor = .blue
        return webView
    }
    
    func updateUIView(_ uiView: UIWebView, context: Context) {
        
    }
    
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
