//
//  ContentView.swift
//  SourceOfTruth
//
//  Created by user on 2020/11/6.
//

import SwiftUI

struct ContentView: View {

    @State var title: String = "Hi"

    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
            TextField("Input String", text: $title)
                .font(.largeTitle)
                .padding()
            Button(action: {
                self.title = "Changed"
            }) {
                Text("Change")
                    .font(.largeTitle)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
