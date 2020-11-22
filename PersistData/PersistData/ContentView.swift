//
//  ContentView.swift
//  PersistData
//


import SwiftUI

struct ContentView: View {
    
    @State private var counter1 = 0
    @State private var counter2 = 0
    @State private var counter3 = 0
    
    var body: some View {
        VStack {
            CounterButton(id: 1, counter: $counter1, color: .green)
            CounterButton(id: 2, counter: $counter2, color: .blue)
            CounterButton(id: 3, counter: $counter3, color: .red)
        }
        .onAppear(perform: {
            if let c1 = UserDefaults.standard.value(forKey: "counter1") {
                print("counter1!")
                counter1 = c1 as! Int
            } else {
                print("first try!")
                UserDefaults.standard.setValue(counter1, forKey: "counter1")
            }
            if let c2 = UserDefaults.standard.value(forKey: "counter2") {
                print("counter2!")
                counter2 = c2 as! Int
            } else {
                print("first try!")
                UserDefaults.standard.setValue(counter2, forKey: "counter2")
            }
            if let c3 = UserDefaults.standard.value(forKey: "counter3") {
                print("counter3!")
                counter3 = c3 as! Int
            } else {
                print("first try!")
                UserDefaults.standard.setValue(counter3, forKey: "counter3")
            }


        })
    }
}

struct CounterButton: View {
    
    // add id to identify button
    var id: Int
    @Binding var counter: Int
    
    var color: Color
    
    var body: some View {
        Button(action: {
            self.counter += 1
            
            // save counter
            UserDefaults.standard.setValue(self.counter, forKey: "counter\(id)")
            print("\(self.counter), counter\(id)")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
