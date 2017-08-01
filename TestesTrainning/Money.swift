//
//  Money.swift
//  TestesTrainning
//
//  Created by Thiago Lioy on 01/08/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

import Foundation

class Money {
    
    private(set) var total: Double = 0
    
    func increment(amount: Double) {
        total = amount
    }
    
    func decrement(amount: Double) {
        total -= amount
    }
}
