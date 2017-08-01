//
//  MoneyTests.swift
//  TestesTrainning
//
//  Created by Thiago Lioy on 01/08/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

import XCTest
@testable import TestesTrainning

class MoneyTests: XCTestCase {
    
    var money: Money!
    
    override func setUp() {
        super.setUp()
        money = Money()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInitialValue() {
        XCTAssertEqual(money.total, Double(0))
    }
    
    func testIncrement() {
        money.increment(amount: 10)
        XCTAssertEqual(money.total, Double(10))
    }
    
    
}
