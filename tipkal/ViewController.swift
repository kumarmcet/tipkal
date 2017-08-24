//
//  ViewController.swift
//  tipkal
//
//  Created by Kumaravadivel Shanmugam on 8/22/17.
//  Copyright © 2017 Kumaravadivel Shanmugam. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var percentChooser: UISegmentedControl!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let savedDefaults = UserDefaults.standard
        let defaultLastBill = savedDefaults.double(forKey: "last_bill_amount")
        var defaultLastTipIndex = savedDefaults.integer(forKey: "default_tip_percent_index");

        if( defaultLastTipIndex <= 0 ) {
            defaultLastTipIndex = 1;
        }
        percentChooser.selectedSegmentIndex = defaultLastTipIndex;

        if defaultLastBill > 0.0 {
            billAmount.text = String(defaultLastBill)
            TipChanged(self)
        }
        billAmount.becomeFirstResponder()
        
        print("Re-loading \n ****** *\n*******\n *****");

    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        billAmount.resignFirstResponder()
        return true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func editingEnded(_ sender: Any) {
                billAmount.resignFirstResponder()
    }

    @IBAction func tappedEvent(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func TipChanged(_ sender: Any) {
        let tipPercents = [0.15,0.18,0.25,0.30]
        let initialBill = Double(billAmount.text!) ?? 0
        let tip         = Double(initialBill*tipPercents[percentChooser.selectedSegmentIndex])
        
        tipAmount.text = String(format: "$%.2f",tip);
        totalAmount.text = String(format: "$%.2f",tip+initialBill);

        let newDefaults = UserDefaults.standard
        newDefaults.set(initialBill, forKey: "last_bill_amount")
        newDefaults.synchronize()

    }
}

