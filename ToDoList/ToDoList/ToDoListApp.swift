//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by user on 2020/11/20.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    // init the environment object
    var todoArr = ToDoList()
    
    var body: some Scene {
        WindowGroup {
            // inject the environment object
            ContentView().environmentObject(todoArr)
        }
    }
}
