//
//  ContentView.swift
//  SwiftUIText
//
//  Created by user on 2020/10/22.
//  Copyright © 2020 FCU. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("pairs")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
                Color.red
                    .opacity(0.4)
                    .overlay(
                        Text("wen")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .frame(width: 300)
                    )
        )
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
