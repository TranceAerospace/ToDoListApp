//
//  ToDoListItem.swift
//  ToDoListApp
//
//  Created by Mark Trance on 5/3/23.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
