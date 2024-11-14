//
//  BaseUITest.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 14/11/24.
//

import XCTest

class BaseUITest: XCTestCase {
    lazy var app: XCUIApplication = {
        return XCUIApplication()
    }()
    
    lazy var loginElements: LoginElements = {
        return LoginElements(app: app)
    }()
}
