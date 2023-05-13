//
//  ToDoListViewVM.swift
//  ToDoListApp
//
//  Created by Mark Trance on 5/3/23.
//

import Foundation

/// ViewModel for list of items view
/// Primary Tab
class ToDoListViewVM: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        
    }
}
