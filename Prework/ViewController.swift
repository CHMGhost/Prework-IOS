//
//  ViewController.swift
//  Prework
//
//  Created by Ken Keith on 3/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalTipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountInputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        //Bill amount
        let bill = Double(billAmountInputField.text!) ?? 0
        //Get total tip
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //updating labels
        totalTipAmount.text = String(format: "$%.2f",tip)
        totalAmount.text = String(format: "$%.2f", total)
    }
    
}

