//
//  Formmatters.swift
//  TestesTrainning
//
//  Created by Thiago Lioy on 01/08/17.
//  Copyright © 2017 Thiago Lioy. All rights reserved.
//

import Foundation



class Formatters {
    static let shared = Formatters()
    private let numberFormatter = NumberFormatter()
    private let dateFormatter = DateFormatter()
    private init() {}
    
    func currency(from value: NSNumber) -> String? {
        numberFormatter.numberStyle = .currency
        return numberFormatter.string(from: value)
    }
    
    func date(from string: String, with pattern: String) -> Date? {
        dateFormatter.dateFormat = pattern
        return dateFormatter.date(from: string)
    }
}
