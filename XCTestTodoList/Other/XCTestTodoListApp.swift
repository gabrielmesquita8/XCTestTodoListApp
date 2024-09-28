//
//  XCTestTodoListApp.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 22/09/24.
//

import FirebaseCore
import SwiftUI

@main
struct XCTestTodoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
