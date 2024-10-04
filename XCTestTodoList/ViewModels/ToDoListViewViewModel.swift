//
//  ToDoListViewViewModel.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 26/09/24.
//

import Foundation

// ViewModel for list of items view
// Primary lab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
