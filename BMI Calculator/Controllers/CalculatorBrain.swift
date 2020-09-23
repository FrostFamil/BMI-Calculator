//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Famil Samadli on 9/23/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let value = String(format: "%.1f", bmi?.value ?? 0.0);
        return value;
    }
    
    func getAdvice() -> String {
        let value = bmi?.advice ?? "No advice";
        return value;
    }
    
    func getColor() -> UIColor {
        let value = bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
        return value;
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height);
        
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1));
        }else if (bmiValue < 24.9){
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1));
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1));
        }
    };
}
