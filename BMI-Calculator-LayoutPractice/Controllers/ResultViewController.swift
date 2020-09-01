//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by iOS Dev on 31/8/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
  
  var bmiData: String?
  var advice : String?
  var color: UIColor?
  
  @IBOutlet var bmiLabel: UILabel!
  @IBOutlet var adviceLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = color
    bmiLabel.text = bmiData
    adviceLabel.text = advice
  }
  
  
  @IBAction func goViewController(_ sender: UIButton){
    self.dismiss(animated: true, completion: nil)
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
