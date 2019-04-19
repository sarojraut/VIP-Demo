//
//  VIP_DemoUITests.swift
//  VIP-DemoUITests
//
//  Created by admin on 4/1/19.
//  Copyright © 2019 admin. All rights reserved.
//

import XCTest

class VIP_DemoUITests: XCTestCase {

    override func setUp() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
 
    
        //
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        snapshot("0Launch")
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
