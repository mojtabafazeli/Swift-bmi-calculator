//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by student on 2020-10-27.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    var advice: String?
    var color: UIColor?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let value = (weight / pow(height, 2))
        if value < 18.5 {
            advice = "Eat more pies!"
            color = #colorLiteral(red: 0.5044495729, green: 0.9272469441, blue: 1, alpha: 1)
        } else if value < 24.9 {
            advice = "Fit as a fiddle!"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        } else {
            advice = "Eat less pies!"
            color = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        }
        
        bmi = BMI(value: value, advice:advice! , color: color!)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}

