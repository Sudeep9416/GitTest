//
//  ViewController.swift
//  Tippy2
//
//  Created by Dasgupta, Sudeep on 12/21/15.
//  Copyright © 2015 Dasgupta, Sudeep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
   
    @IBOutlet weak var splitLabel: UILabel!
    
    @IBOutlet weak var splitAmount: UILabel!
    
    
    @IBOutlet weak var splitValueSlider: UISlider!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    totalLabel.text = "$0.00"
        
     
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onEditingChanged(sender: AnyObject) {
        
        
        
        
        let billAmount =  NSString(string: billField.text!).doubleValue
        
        var tipPercentages = [0.18, 0.20, 0.22]
        
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        let tipAmount = billAmount * tipPercentage
        
        let totalAmount = billAmount + tipAmount
        
        let roundedTotalAmount = round(totalAmount * 100)/100
        
        //tipLabel.text = String(format:"%.2f", tip)
        //totalLabel.text = String(format:"%.2f", roundedTotalAmount)
        totalLabel.text = "$\(roundedTotalAmount)"
   
        let splitSelected = Double(splitValueSlider.value)
        
        print(splitSelected)
        
        let intsplitSelected = Int(splitSelected)
        
        splitLabel.text = "\(intsplitSelected)"
        
        let splitDollarAmount = roundedTotalAmount/splitSelected
        
        let roundedSplitDollarAmount = round(splitDollarAmount * 100)/100
        
        splitAmount.text = "$\(roundedSplitDollarAmount)"
    
    
    }
    
    

   
    @IBAction func endEditing(sender: AnyObject) {
    view.endEditing(true)
    
    }
    
    
}


