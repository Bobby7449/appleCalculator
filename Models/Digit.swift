//
//  Digit.swift
//  appleCalculator
//
//  Created by xcode6 on 9/8/23.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
