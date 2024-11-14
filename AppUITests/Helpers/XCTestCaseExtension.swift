//
//  XCTestCaseExtension.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 14/11/24.
//

import XCTest

extension XCTestCase {
    func XCTAssertElementExists(_ element: XCUIElement, errorMessage: XCTestErrorMessage, _ timerEnd: Double? = nil) {
        if timerEnd == nil {
            XCTAssert(element.waitForExistence(timeout: MainUIHelper.WaitTime.fifteenSeconds.rawValue), errorMessage.rawValue)
        } else {
            XCTAssert(element.waitForExistence(timeout: timerEnd!), errorMessage.rawValue)
        }
    }
    
    func XCTAssertElementNotExists(_ element: XCUIElement, errorMessage: XCTestErrorMessage) {
        XCTAssertFalse(element.waitForExistence(timeout: MainUIHelper.WaitTime.fiveSeconds.rawValue), errorMessage.rawValue)
    }
    
    func clickIfExists(_ element: XCUIElement, timeout: TimeInterval = MainUIHelper.WaitTime.fifteenSeconds.rawValue) {
        if element.waitForExistence(timeout: timeout) && element.isHittable {
            element.firstMatch.tap()
        }
    }
    
    func clickAndTypeIfExists(_ element: XCUIElement, text: String, timeout: TimeInterval = MainUIHelper.WaitTime.fifteenSeconds.rawValue) {
        XCTAssert(element.waitForExistence(timeout: timeout), XCTestErrorMessage.genericErrorMessage.rawValue)
        element.tap()
        element.typeText(text + "\n")
    }
    
    func validateElementExist(_ elements: [XCUIElement]) {
        for element in elements {
            XCTAssert(element.waitForExistence(timeout: MainUIHelper.WaitTime.fifteenSeconds.rawValue), XCTestErrorMessage.genericErrorMessage.rawValue)
        }
    }
    
    func validateExistAtleastOneElement(_ elements: [XCUIElement], timeout: TimeInterval = MainUIHelper.WaitTime.fifteenSeconds.rawValue) -> Bool {
        for element in elements where element.waitForExistence(timeout: timeout) {
            return true
        }
        return false
    }
    
    func clickOnSequenceOfElements(_ elements: [XCUIElement]) {
        for element in elements {
            clickIfExists(element, timeout: MainUIHelper.WaitTime.fifteenSeconds.rawValue)
        }
    }
}
