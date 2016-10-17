//
//  finalInterfaceController.swift
//  watchCalc
//
//  Created by MacBook on 10/15/16.
//  Copyright © 2016 timlu. All rights reserved.
//

import WatchKit
import Foundation


class finalInterfaceController: WKInterfaceController {
    @IBOutlet var original: WKInterfaceLabel!
    @IBOutlet var final: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        if let test: [String] = context as? [String]{
            original.setText(test[0])
            final.setText(test[1])
        }
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
