//
//  ViewController.swift
//  CalculatorForPPI
//
//  Created by 卢家涛 on 2019/9/1.
//  Copyright © 2019 卢家涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let width: Int = Int(textField1.text!)!
        let height: Int = Int(textField2.text!)!
        let size: Double = Double(textField3.text!)!
        let result: Int = Int(round(sqrt((pow(Double(width), 2) + pow(Double(height), 2)) / pow(size, 2))))
        label.text = "\(result) ppi"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
    }
    
}
