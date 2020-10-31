//
//  ContentView.swift
//  SwiftUIState
//
//  Created by user on 2020/10/30.
//  Copyright © 2020 FCU. All rights reserved.
//

import SwiftUI


// 切換 toggle()
//struct ContentView: View {
//
//    @State private var isPlaying = false
//
//    var body: some View {
//        Button(action: {
//            // Switch between the play and stop button
//            self.isPlaying.toggle()
//        }) {
//           Image(systemName: isPlaying ?
//            "stop.circle.fill" : "play.circle.fill")
//            .font(.system(size: 150))
//            .foregroundColor(isPlaying ? .red : .green)
//        }
//    }
//}

// 點擊 數字+1 (個別綁定)
struct ContentView: View {
    
    @State private var counter01 = 1
    @State private var counter02 = 1
    @State private var counter03 = 1
    
    var body: some View {
        VStack{
            CounterButton(counter: $counter01, color: .blue)
            CounterButton(counter: $counter02, color: .green)
            CounterButton(counter: $counter03, color: .red)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CounterButton: View {
    
    @Binding var counter: Int
    
    var color: Color
    
    var body: some View {
        Button(action: {
            self.counter += 1
        }) {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            .overlay(
                Text("\(counter)")
                    .font(.system(size: 100, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
            )
        }
    }
}
