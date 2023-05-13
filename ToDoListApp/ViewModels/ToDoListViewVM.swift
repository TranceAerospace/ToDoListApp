//
//  ToDoListViewVM.swift
//  ToDoListApp
//
//  Created by Mark Trance on 5/3/23.
//

import Foundation
import FirebaseFirestore

/// ViewModel for list of items view
/// Primary Tab
class ToDoListViewVM: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
