//
//  ToDoListItem.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 26/09/24.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
