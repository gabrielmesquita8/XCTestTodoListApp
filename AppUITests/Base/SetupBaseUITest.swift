//
//  SetupBaseUITest.swift
//  XCTestTodoList
//
//  Created by Gabriel Reis de Mesquita on 14/11/24.
//

class SetupBaseUITest: BaseUITest {
    let commonAction = CommonActions()
    
    override func setUp() {
        super.setUp()
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
        commonAction.deleteApp()
    }
}
