//
//  ViewController.swift
//  Prework
//
//  Created by Alaa Salim on 1/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Tip Calculator"
    }

    
    @IBAction func calculateTip(_ sender: Any)
    {
        // Getting bill amount from text field
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Total tip = tip * tip %
        let tipPercent = [0.15, 0.18, 0.2]t
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // Updating tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // Update total
        totalLabel.text = String(format: "$%.2f",total)
    }
    
}

