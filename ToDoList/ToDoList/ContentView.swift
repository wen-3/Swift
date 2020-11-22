//
//  ContentView.swift
//  ToDoList
//
//  Created by user on 2020/11/20.
//

import SwiftUI

//using @published to pass data between views
class ToDoList: ObservableObject {
    @Published var todos2: [String]
    
    init() {
        todos2 = Array(0..<100).map{_ in UUID().uuidString }
    }
}

struct ContentView: View {

//cross view object
    @EnvironmentObject var todoArr : ToDoList
    
//    @State var todos = Array(0..<20).map{_ in UUID().uuidString }
    
    //showNewToDo
    @State var showNewToDo = false
    

    var body: some View {
        // overlay a button
        NavigationView {
            ZStack {
                List {
                    ForEach(self.todoArr.todos2, id: \.self) { todo in
                        Text(todo)
                    }
 
                    .onDelete{ (indexSet) in
                        // delete
                        self.todoArr.todos2.remove(atOffsets: indexSet)
                    }

                }
                VStack {
                    Spacer()
                    
                    // action - change state of showNewToDo
                    Button(action: {showNewToDo.toggle()}) {
                        Image(systemName: "plus")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.green)
                            .clipShape(Circle())
                    }
                    Spacer()
                        .frame(height: 30)
                }

            }.navigationTitle("Todo")
            
            //go to NewToDoView
            .sheet(isPresented: $showNewToDo, content: {
                NewToDoView()
            })
        }
    }

    func deleteTodo(indexSet: IndexSet){
        print("Deleted item at \(indexSet)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // inject the environment object
            ContentView().environmentObject(ToDoList())
    }
}
