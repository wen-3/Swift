//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by user on 2020/10/29.
//  Copyright © 2020 FCU. All rights reserved.
//

import SwiftUI

// 垂直滑動
//struct ContentView: View {
//    var body: some View {
//        ScrollView{
//            HStack{
//                VStack (alignment: .leading){
//                    Text("WEDNESDAY,OCT 28")
//                            .font(.headline)
//                            .foregroundColor(.secondary)
//                    Text("Your Reading")
//                            .font(.title)
//                            .fontWeight(.black)
//                            .foregroundColor(.primary)
//                            .lineLimit(3)
//                }
//                Spacer()
//            }
//            .padding()
//
//            VStack{
//                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Vikash")
//                CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
//                CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
//                CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
//            }
//        }
//    }
//}


// 水平滑動
struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                VStack (alignment: .leading){
                    Text("WEDNESDAY,OCT 28")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    Text("Your Reading")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                            .lineLimit(3)
                }
                Spacer()
            }
            .padding()
            
            HStack{
                Group{
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Vikash")
                CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan")
                CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati")
                }.frame(width:300)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

