//
//  CommonActions.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 14/11/24.
//

import XCTest

class CommonActions: BaseUITest {
    let helper = MainUIHelper()
    
    func login(email: String = "test@gmail.com", password: String = "@test123") {
        // Login interactions
    }
    
    func deleteApp() {
        let springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")
        springboard.activate()
        
        springboard.icons["packageNAMEOFICON"].press(forDuration: 1.7)
        springboard.collectionViews.buttons["buttonToRemoveElement"].tap()
        sleep(1)
        
        springboard.alerts["Remove appName"].scrollViews.otherElements.buttons["Delete App"].tap()
        sleep(1)
        springboard.alerts["Delete appName"].scrollViews.otherElements.buttons["Delete"].tap()
    }
}
