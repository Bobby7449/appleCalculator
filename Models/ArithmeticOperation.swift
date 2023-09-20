//
//  ArithmeticOperation.swift
//  appleCalculator
//
//  Created by xcode6 on 9/8/23.
//

import Foundation

enum ArithmeticOperation: CaseIterable, CustomStringConvertible
{
case addition, subtraction, multiplication, division
    
    
    var description: String {
        switch self {
        case .addition:
            return "+"
        case .subtraction:
            return "−"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        }
    }
    
}
