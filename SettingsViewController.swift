//
//  SettingsViewController.swift
//  tipkal
//
//  Created by Kumaravadivel Shanmugam on 8/23/17.
//  Copyright © 2017 Kumaravadivel Shanmugam. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var DefTipPercentChooser: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Pulling and Setting up the default tip percent if there was anything chosen last time.=
        let savedDefaults = UserDefaults.standard
        let defaultTipIndex = savedDefaults.integer(forKey: "default_tip_percent_index");
        DefTipPercentChooser.selectedSegmentIndex = defaultTipIndex ;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func DefaultPercentChanged(_ sender: Any) {

        let newDefaults = UserDefaults.standard
        newDefaults.set(DefTipPercentChooser.selectedSegmentIndex, forKey: "default_tip_percent_index")
        newDefaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
