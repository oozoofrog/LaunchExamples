//
//  ContentView.swift
//  OpenURL
//
//  Created by spacefrog on 2021/02/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                UIApplication.shared.open(URL(string: "test://open")!, options: [:]) { result in
                    print(result)
                }
            }, label: {
                Text("test://open")
            })
            WebView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
