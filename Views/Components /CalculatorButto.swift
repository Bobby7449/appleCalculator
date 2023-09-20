//
//  CalculatorButto.swift
//  appleCalculator
//
//  Created by  on 9/12/23.
//

import SwiftUI

extension calculatorView{

//Hello
    struct CalculatorButton: View {
        
        @Binding var num1: String
        @Binding var num2: String
    
    let buttonType: ButtonType
   
    var body: some View {
       
     
        Button(buttonType.description) {
            
            print("button tapped: \(buttonType.description)")
            num1 = "\(buttonType.description)"
            print(num1)
        }
                        .buttonStyle(CalculatorButtonStyle(
                            size: getButtonSize(), 
                            backgroundColor: buttonType.backgroundColor,
                            foregroundColor: buttonType.foregroundColor,
                            isWide: buttonType == .digit(.zero))
                        )
        
        
        }
        
        
        
       // MARK: calculating button size = (screenWidth-(spacingCount * padding))/buttonCount
        private func getButtonSize() -> CGFloat {
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount: CGFloat = 4.0
            let spacingCount = buttonCount + 1
            return (screenWidth - (spacingCount * Constants.padding)) / buttonCount
        }
    }
}
