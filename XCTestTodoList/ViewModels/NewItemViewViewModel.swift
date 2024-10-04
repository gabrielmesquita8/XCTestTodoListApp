//
//  NewItemViewViewModel.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 26/09/24.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var dueDate = Date()
    
    init() {}
    
    func save() {
        
    }
}
