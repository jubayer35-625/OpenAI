//
//  ContentView.swift
//  Chat_GPT
//
//  Created by Md Jubayer Hossain on 12/3/23.
//

import SwiftUI

struct ContentView: View {
    @State var url = URL(string:"https://chat.openai.com/auth/login")!

    var body: some View {
        WebView(url: $url)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
