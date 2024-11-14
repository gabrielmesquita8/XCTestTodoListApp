//
//  LoginElements.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 14/11/24.
//

import XCTest

class LoginElements {
    enum LoginIdentifiers: String {
        // Texts
        case exampleElement = "exampleElement"
    }
    
    private let app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    // Instance elements
    lazy var exampleElementText: XCUIElement = app.staticTexts[LoginIdentifiers.exampleElement.rawValue]
}
