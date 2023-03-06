//
//  ViewController.swift
//  bmi
//
//  Created by mohamdan on 06/03/2023.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculateBrain = CalculatorBrain()
    
    @IBOutlet weak var hightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var hightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hightSliderChanged(_ sender: UISlider) {
        let hight = String(format: "%.2f", sender.value)
        hightLabel.text = "\(hight)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
       let weight = String(format: "%.2f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        calculateBrain.calculateBMI(hight: hightSlider.value, weight: weightSlider.value)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmivalue = calculateBrain.getBMIValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
        }
    }
    
}

