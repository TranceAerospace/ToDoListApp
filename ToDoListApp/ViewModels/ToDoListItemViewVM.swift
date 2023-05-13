//
//  ToDoListItemViewVM.swift
//  ToDoListApp
//
//  Created by Mark Trance on 5/3/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

/// ViewModel for single to do list item view (each row in items list)

class ToDoListItemViewVM: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
        
    }
}
