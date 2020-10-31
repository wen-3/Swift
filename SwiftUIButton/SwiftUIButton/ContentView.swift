//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by user on 2020/10/30.
//  Copyright © 2020 FCU. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
            Spacer()
                Button(action: {
                    print("Plus button tapped")
                }) {
                    Image(systemName: "plus")
                }
                .buttonStyle(CircularStyle())
                .padding(.trailing, 15)
            
            }
            
            HStack {
                Button(action: {
                    print("Delete button tapped!")
                }) {
                    HStack {
                         Image(systemName: "trash")
                             .font(.title)
                         Text("Delete")
                             .fontWeight(.semibold)
                             .font(.title)
                     }
                }
                .buttonStyle(GradientBackgroundStyle())
            }
            .padding(.horizontal, 10)
            
            HStack {
                Button(action: {
                    print("Edit button tapped!")
                }) {
                    HStack {
                         Image(systemName: "square.and.pencil")
                             .font(.title)
                         Text("Edit")
                             .fontWeight(.semibold)
                             .font(.title)
                     }
                }
                .buttonStyle(GradientBackgroundStyle())
            }
            .padding(.horizontal, 10)
            
            HStack {
                Button(action: {
                    print("Share button tapped!")
                }) {
                    HStack {
                         Image(systemName: "square.and.arrow.up")
                             .font(.title)
                         Text("Share")
                             .fontWeight(.semibold)
                             .font(.title)
                     }
                }
                .buttonStyle(GradientBackgroundStyle())
            }
            .padding(.horizontal, 10)
            
            
            Button(action: {
                print("Hello World tapped!")
            }) {
                Text("Hello World")
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
            }

            Spacer()

            Button(action: {}) {
                Text("Hello World")
                .fontWeight(.bold)
//                .font(.title)
                .padding()
                .background(Color.purple)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.purple, lineWidth: 5)
                )
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct GradientBackgroundStyle: ButtonStyle {
   func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

struct CircularStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.largeTitle)
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .clipShape(Circle())
            .rotationEffect(configuration.isPressed ? Angle(degrees: 135) : Angle(degrees: 0))
    }
}
