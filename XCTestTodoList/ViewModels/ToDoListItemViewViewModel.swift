//
//  ToDoListItemViewViewModel.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 04/10/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

// ViewModel for single of items view
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
