//
//  ViewController.swift
//  Tipsy
//
//  Created by shivam tyagi on 20/12/18.
//  Copyright © 2018 shivam tyagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Tip Calculator"
    }

    @IBOutlet weak var BillValue: UITextField!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLable: UILabel!
    
    @IBAction func billValueChanged(_ sender: Any) {
        let billAmount = Double(BillValue.text!) ?? 0
        let tipP=[0.1,0.15,0.2]
        let tip = billAmount*tipP[tipPercent.selectedSegmentIndex]
        let total=billAmount+tip
        
        tipLabel.text=String(format:"$%.2f",tip)
        totalLable.text=String(format:"$%.2f",total)
        
    }
    
    @IBAction func didtap(_ sender: Any) {
        print("hello")
        view.endEditing(true)
    }

    
}

