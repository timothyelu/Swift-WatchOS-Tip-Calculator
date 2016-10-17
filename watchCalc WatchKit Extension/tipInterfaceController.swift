//
//  tipInterfaceController.swift
//  watchCalc
//
//  Created by MacBook on 10/15/16.
//  Copyright © 2016 timlu. All rights reserved.
//

import WatchKit
import Foundation


class tipInterfaceController: WKInterfaceController {
    @IBOutlet var original: WKInterfaceLabel!
    @IBOutlet var ten: WKInterfaceButton!
    @IBOutlet var fifteen: WKInterfaceButton!
    @IBOutlet var twentyFive: WKInterfaceButton!

    @IBOutlet var twenty: WKInterfaceButton!

    var amount: Double = 0.00
    var final: String = ""
    var timer: NSTimer?

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if let test = context as? Double{
            self.amount = test
        }

        final = "$"+String(format:"%.2f",self.amount)
        original.setText(final)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        ten.setBackgroundColor(UIColor.darkGrayColor())
        fifteen.setBackgroundColor(UIColor.darkGrayColor())
        twenty.setBackgroundColor(UIColor.darkGrayColor())
        twentyFive.setBackgroundColor(UIColor.darkGrayColor())
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func contextForSegueWithIdentifier(segueIdentifier: String) -> AnyObject? {
        return ["$" + String(format:"%.2f",self.amount), self.final]
    }


    @IBAction func tenPercent() {
        final = "$" + String(format:"%.2f",(amount * 0.1))
        animateWithDuration(0.5, animations: {
            self.ten.setBackgroundColor(UIColor.greenColor())
        })
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector(tipInterfaceController.pushFinal), userInfo: nil, repeats: false)
    }
    @IBAction func fifteenPercent() {
        final = "$" + String(format:"%.2f",(amount * 0.15))
        animateWithDuration(0.5, animations: {
            self.fifteen.setBackgroundColor(UIColor.greenColor())
        })
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector(tipInterfaceController.pushFinal), userInfo: nil, repeats: false)
    }
    @IBAction func twentyPercent() {
        final = "$" + String(format:"%.2f",(amount * 0.2))
        animateWithDuration(0.5, animations: {
            self.twenty.setBackgroundColor(UIColor.greenColor())
        })
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector(tipInterfaceController.pushFinal), userInfo: nil, repeats: false)
    }

    @IBAction func twentyFivePercent() {

        animateWithDuration(0.5, animations: {
            self.twentyFive.setBackgroundColor(UIColor.greenColor())
        })
        final = "$" + String(format:"%.2f",(amount * 0.25))
        timer = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: #selector(tipInterfaceController.pushFinal), userInfo: nil, repeats: false)
    }

    func pushFinal(){
        pushControllerWithName("final", context: ["$"+String(format:"%.2f",self.amount),final])
    }
    
}
