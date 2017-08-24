//
//  ViewController.swift
//  tipkal
//
//  Created by Kumaravadivel Shanmugam on 8/22/17.
//  Copyright © 2017 Kumaravadivel Shanmugam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var percentChooser: UISegmentedControl!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

/*    @IBAction func tapped(_ sender: Any) {
        view.endEditing(true);
        print("Tapped")
    }
*/
    @IBAction func billchanged(_ sender: Any) {
        //let tipPercents = [15,18,25,30]
        //print( "selected Percent",String(tipPercents[1]));
        tipAmount.text = "A1";// String(tipPercents[1]);
    }

    @IBAction func tappedEvent(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func BillChanged(_ sender: Any) {
        print("inside Bill change\n")
        TipChanged(sender)
    }
    @IBAction func TipChanged(_ sender: Any) {
        let tipPercents = [0.15,0.18,0.25,0.30]
        let initialBill = Double(billAmount.text!) ?? 0
        let tip         = Double(initialBill*tipPercents[percentChooser.selectedSegmentIndex])
        
        tipAmount.text = String(format: "$%.2f",tip);
        totalAmount.text = String(format: "$%.2f",tip+initialBill);
    }
}

