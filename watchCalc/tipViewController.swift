//
//  tipViewController.swift
//  watchCalc
//
//  Created by MacBook on 10/15/16.
//  Copyright © 2016 timlu. All rights reserved.
//

import UIKit

class tipViewController: UIViewController {

    @IBOutlet var finalAmount: UILabel!

    @IBOutlet var tenPercent: UIButton!

    @IBOutlet var fifteenPercent: UIButton!

    @IBOutlet var twentyPercent: UIButton!

    @IBOutlet var twentyFivePercent: UIButton!

    @IBOutlet var original: UILabel!

    var amount: Double = 0.00

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        original.text = "$"+String(format:"%.2f",self.amount)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func ten(sender: AnyObject) {
        finalAmount.text = "$" + String(format:"%.2f",(amount * 0.1))
    }
    @IBAction func fifteen(sender: AnyObject) {
        finalAmount.text = "$" + String(format:"%.2f",(amount * 0.15))
    }
    @IBAction func twenty(sender: AnyObject) {
        finalAmount.text = "$" + String(format:"%.2f",(amount * 0.2))
    }
    @IBAction func twentyFive(sender: AnyObject) {
        finalAmount.text = "$" + String(format:"%.2f",(amount * 0.25))
    }

}
