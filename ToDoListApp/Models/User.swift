//
//  User.swift
//  ToDoListApp
//
//  Created by Mark Trance on 5/3/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let emailAddress: String
    let joined: TimeInterval
}
