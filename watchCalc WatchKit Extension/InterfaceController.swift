//
//  InterfaceController.swift
//  watchCalc WatchKit Extension
//
//  Created by MacBook on 10/15/16.
//  Copyright © 2016 timlu. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var AmountLabel: WKInterfaceLabel!
    @IBOutlet var one: WKInterfaceButton!
    @IBOutlet var two: WKInterfaceButton!
    @IBOutlet var three: WKInterfaceButton!
    @IBOutlet var four: WKInterfaceButton!
    @IBOutlet var five: WKInterfaceButton!
    @IBOutlet var six: WKInterfaceButton!
    @IBOutlet var seven: WKInterfaceButton!
    @IBOutlet var eight: WKInterfaceButton!
    @IBOutlet var nine: WKInterfaceButton!
    @IBOutlet var zero: WKInterfaceButton!
    @IBOutlet var decimalButton: WKInterfaceButton!
    @IBOutlet var Next: WKInterfaceButton!

    var amount: Double = 0.00
    var LabelText: String = ""
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        amount = 0.00
        LabelText = ""
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func addOne() {
        LabelText = LabelText + "1"
        AmountLabel.setText(LabelText)
    }
    @IBAction func addTwo() {
        LabelText = LabelText + "2"
        AmountLabel.setText(LabelText)
    }
    @IBAction func addThree() {
        LabelText = LabelText + "3"
        AmountLabel.setText(LabelText)
    }
    @IBAction func addFour() {
        LabelText = LabelText + "4"
        AmountLabel.setText(LabelText)
    }
    @IBAction func addFive() {
        LabelText = LabelText + "5"
        AmountLabel.setText(LabelText)
    }
    @IBAction func addSix() {
        LabelText = LabelText + "6"
        AmountLabel.setText(LabelText)
    }
    @IBAction func addSeven() {
        LabelText = LabelText + "7"
        AmountLabel.setText(LabelText)
    }
    @IBAction func addEight() {
        LabelText = LabelText + "8"
        AmountLabel.setText(LabelText)
    }
    @IBAction func addNine() {
        LabelText = LabelText + "9"
        AmountLabel.setText(LabelText)
    } 
    @IBAction func addZero() {
        LabelText = LabelText + "0"
        AmountLabel.setText(LabelText)
    }
    @IBAction func addDecimal() {
        LabelText = LabelText + "."
        AmountLabel.setText(LabelText)
    }
    @IBAction func enter() {
        if let testAmount = Double(LabelText){
            amount = testAmount
            pushControllerWithName("tipConverter", context: testAmount)
        }else{
            LabelText = ""
            AmountLabel.setText("Error: Not a number")
        }
    }

}
