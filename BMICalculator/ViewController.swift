//
//  ViewController.swift
//  BMICalculator
//
//  Created by Patipol Wangjaitham on 24/1/2562 BE.
//  Copyright © 2562 Patipol Wangjaitham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var categoryResult: UILabel!
    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWeight: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculateBtn(_ sender: Any) {
        let bmi: Float = Float(inputWeight.text!)! / pow((Float(inputHeight.text!)! / 100), 2)
        let bmiString = NSString(format: "%.1f", bmi)
        bmiResult.text = bmiString as String
        if (bmi < 18.5) {
            imgLogo.image = UIImage(named: "Under")
            categoryResult.text = "Underwight"
        } else if (bmi >= 18.5 && bmi < 25) {
            imgLogo.image = UIImage(named: "Nor.png")
            categoryResult.text = "Normal"
        } else if (bmi >= 25 && bmi < 30) {
            imgLogo.image = UIImage(named: "Over.png")
            categoryResult.text = "Overweight"
        } else if (bmi >= 30 && bmi < 35) {
            imgLogo.image = UIImage(named: "Ob.png")
            categoryResult.text = "Obese"
        } else {
            imgLogo.image = UIImage(named: "Ex.png")
            categoryResult.text = "Extremely Obese"
        }
    }
}

