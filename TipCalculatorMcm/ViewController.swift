//
//  ViewController.swift
//  TipCalculatorMcm
//
//  Created by Marco Cruz on 11/7/19.
//  Copyright © 2019 Marco Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var CalcLabel: UILabel!
    @IBOutlet weak var BillField: UITextField!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func OnTap(_ sender: Any) {
        
        print("Hello World")
        
        view.endEditing(true)
        
    }
    @IBAction func CalculateTip(_ sender: Any) {
        
        // Get the bill amount
        let Bill = Double(BillField.text!) ?? 0
        
        
               
        //Calculate the Tip
        
        let tipPercentages = [0.15, 0.2, 0.25]
        let tip = Bill * tipPercentages[TipControl.selectedSegmentIndex]
        
        let total = Bill + tip
               
               
        // Print the tip on the label
        TipLabel.text = String(format: "$%.2F", tip)
        CalcLabel.text = String(format: "$%.2F", total)
    }
    

}

