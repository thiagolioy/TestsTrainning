//
//  TestesTrainningTests.swift
//  TestesTrainningTests
//
//  Created by Thiago Lioy on 01/08/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

import XCTest
@testable import TestesTrainning

class FormattersTests: XCTestCase {
    
    
    override func setUp() {
        super.setUp()
     
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testCurrencyFormat() {
        let formatted = Formatters.shared.currency(from:
            NSNumber(value: 10))!
        XCTAssertEqual(formatted, "$10.00")
    }
    
    func testDateFormat() {
        let format = DateFormatter()
        format.dateFormat = "dd/MM/yyyy"
        let expectedDate = format.date(from: "24/03/1990")!
        let formatted = Formatters.shared.date(from: "24/03/1990", with: "dd/MM/yyyy")!
        XCTAssertEqual(formatted, expectedDate)
    }
}
