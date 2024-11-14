//
//  MainUIHelper.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 14/11/24.
//

import XCTest

class MainUIHelper: BaseUITest {
    enum WaitTime: Double {
        case twoSeconds = 2
        case fiveSeconds = 5
        case fifteenSeconds = 15
    }
    
    func waitElement(element: Any, timeout: TimeInterval = 45.0) {
        let exists = NSPredicate(format: "exists == 1")
        expectation(for: exists, evaluatedWith: element, handler: nil)
        waitForExpectations(timeout: timeout, handler: nil)
    }
}
