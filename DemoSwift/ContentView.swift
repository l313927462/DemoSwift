//
//  ContentView.swift
//  DemoSwift
//
//  Created by Magus on 2023/2/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")

        }
        .padding()
    }
    
    
    func click() {
        provider.request(.login(account: " ", password: " ")) { result in
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
