//
//  SecondViewController.swift
//  bmi
//
//  Created by mohamdan on 06/03/2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmivalue : String?
    var advice : String?
    var color : UIColor?
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text = bmivalue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
        
    }
    
    
}
