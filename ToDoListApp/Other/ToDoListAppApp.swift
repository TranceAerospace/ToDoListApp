//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Mark Trance on 5/3/23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
