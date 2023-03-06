//
//  CalculatorBrain.swift
//  bmi
//
//  Created by mohamdan on 06/03/2023.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI (hight:Float, weight:Float) {
        let bmiValue = weight / (hight * hight)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are Fit!", color: .green)
        }else {
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: .red)
        }
    }
    
    func getBMIValue () -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
