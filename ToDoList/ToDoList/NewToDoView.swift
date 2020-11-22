//
//  NewToDoView.swift
//  ToDoList
//
//  Created by user on 2020/11/20.
//

import SwiftUI

struct NewToDoView: View {
    //State: being monitored
    @State var text = ""
    
    // define
    @EnvironmentObject var todoArr : ToDoList
    
    //pass informtaion
    @Environment(\.presentationMode) var presenationMode
    
    var body: some View {
        VStack {
            Text("Enter a new Todo")
                .font(.largeTitle)

            //binding
            TextEditor(text: $text)
                .padding(.horizontal)

            Button(action: saveTodo) {
                Text("Save")
                    .font(.title2)
                    .padding(.all)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(15)

            }
            Spacer()
                .frame(height: 30)
        }
    }
    //action (can not preview)
    func saveTodo() {
        print(text)
        
        // append
        self.todoArr.todos2.append(text)
        
        //dismiss newToDoView
        presenationMode.wrappedValue.dismiss()
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView()
    }
}
