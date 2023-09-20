//
//  calculatorView.swift
//  appleCalculator
//
//  Created by xcode6 on 9/8/23.
//

import SwiftUI

struct calculatorView: View {
    
//@StateObject var vm = CalculatorVieModel()
    
    @State var num1 = "0"
    @State var num2 = ""
    
    var buttonTypes: [[ButtonType]] {
        [[.allClear, .negative, .percent, .operation(.division)],
         [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.multiplication)],
         [.digit(.four), .digit(.five), .digit(.six), .operation(.subtraction)],
         [.digit(.one), .digit(.two), .digit(.three), .operation(.addition)],
         [.digit(.zero), .decimal, .equals]]
    }
  
    
    
    var body: some View {
        
        
            VStack {
                Spacer()
                displayText
                buttonPad
            }
            .padding(Constants.padding)
            .background(Color.black)

            
        }
    }


   
    
    
    struct calculatorView_Previews: PreviewProvider {
        static var previews: some View {
            calculatorView()
        }
    }
    


    // MARK: Components
    
    extension calculatorView{
        
        private var displayText: some View {
                Text("\(num1)")
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .font(.system(size: 88, weight: .light))
                .lineLimit(1)
                .minimumScaleFactor(0.2)
        }
        
        private var buttonPad: some View {
            VStack(spacing: Constants.padding){
                ForEach(buttonTypes, id: \.self) { row in
                    HStack(spacing: Constants.padding) {
                        ForEach(row, id: \.self) { buttonType in
                            CalculatorButton(num1: $num1, num2: $num2, buttonType: buttonType)

                        }
                    }
                }
            }
        }
    }

