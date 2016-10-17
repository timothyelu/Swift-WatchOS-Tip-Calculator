//
//  ViewController.swift
//  watchCalc
//
//  Created by MacBook on 10/15/16.
//  Copyright © 2016 timlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var NumberDisplay: UILabel!
    @IBOutlet var One: UIButton!
    @IBOutlet var Two: UIButton!
    @IBOutlet var Three: UIButton!
    @IBOutlet var Four: UIButton!
    @IBOutlet var Five: UIButton!
    @IBOutlet var Six: UIButton!
    @IBOutlet var Seven: UIButton!
    @IBOutlet var Eight: UIButton!
    @IBOutlet var Nine: UIButton!
    @IBOutlet var Zero: UIButton!
    @IBOutlet var DecimalButton: UIButton!
    @IBOutlet var EnterButton: UIButton!


    var amount: Double = 0.00
    var LabelText: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        amount = 0.00
        LabelText = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "EnterNumber" {
            if let destination = segue.destinationViewController as? tipViewController {
                destination.amount = self.amount
            }
        }
    }

    @IBAction func One(sender: AnyObject) {
        LabelText = LabelText + "1"
        NumberDisplay.text = LabelText
    }
    @IBAction func Two(sender: AnyObject) {
        LabelText = LabelText + "2"
        NumberDisplay.text = LabelText
    }
    @IBAction func Three(sender: AnyObject) {
        LabelText = LabelText + "3"
        NumberDisplay.text = LabelText
    }
    @IBAction func Four(sender: AnyObject) {
        LabelText = LabelText + "4"
        NumberDisplay.text = LabelText
    }
    @IBAction func Five(sender: AnyObject) {
        LabelText = LabelText + "5"
        NumberDisplay.text = LabelText
    }
    @IBAction func Six(sender: AnyObject) {
        LabelText = LabelText + "6"
        NumberDisplay.text = LabelText
    }
    @IBAction func Seven(sender: AnyObject) {
        LabelText = LabelText + "7"
        NumberDisplay.text = LabelText
    }
    @IBAction func Eight(sender: AnyObject) {
        LabelText = LabelText + "8"
        NumberDisplay.text = LabelText
    }

    @IBAction func Nine(sender: AnyObject) {
        LabelText = LabelText + "9"
        NumberDisplay.text = LabelText
    }
    @IBAction func Zero(sender: AnyObject) {
        LabelText = LabelText + "0"
        NumberDisplay.text = LabelText
    }

    @IBAction func Decimal(sender: AnyObject) {
        LabelText = LabelText + "."
        NumberDisplay.text = LabelText
    }
    @IBAction func Enter(sender: AnyObject) {

        if let testAmount = Double(LabelText){
            amount = testAmount
            performSegueWithIdentifier("EnterNumber", sender: nil)
        }else{
            LabelText = ""
            NumberDisplay.text = "Error: Not a number"
        }
    }
}

