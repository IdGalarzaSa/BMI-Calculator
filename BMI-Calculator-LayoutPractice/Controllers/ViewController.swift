//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var calculatorBrain = CalculatorBrain()
  
  @IBOutlet var heightSlider: UISlider!
  @IBOutlet var weightSlider: UISlider!
  
  @IBOutlet var heightLabel: UILabel!
  @IBOutlet var weightLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func heightChanged(_ sender: UISlider) {
    let height = String(format: "%.2f", sender.value)
    heightLabel.text = "\(height)m"
  }
  
  @IBAction func weightChanged(_ sender: UISlider) {
    let weight = Int(sender.value)
    weightLabel.text = "\(weight)Kg"
  }
  
  @IBAction func calculatePressed(_ sender: UIButton) {
    let currentHeight = heightSlider.value
    let currentWeight = weightSlider.value
    
    calculatorBrain.calculateBMI(height: currentHeight, weight: currentWeight)
    
    performSegue(withIdentifier: "goToResultViewController", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResultViewController" {
      let resultVC = segue.destination as! ResultViewController
      resultVC.bmiData = calculatorBrain.getBMIValue()
      resultVC.advice = calculatorBrain.getAdvice()
      resultVC.color = calculatorBrain.getColor()
    }
  }
  
}

