//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value);
        heightLabel.text = "\(height)m";
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        let weight =  String(format: "%.0f", sender.value);
        weightLabel.text = "\(weight)Kg";
    }
    
    @IBAction func calculateFunction(_ sender: UIButton) {
        let height = heightSlider.value;
        let weight = weightSlider.value;
        
        let bmi = weight / (height * height);
        
        let secondVC = SecondViewController();
        secondVC.bmiValue = String(format: "%.1f", bmi);
        
        self.present(secondVC, animated: true, completion: nil);
    }
}

