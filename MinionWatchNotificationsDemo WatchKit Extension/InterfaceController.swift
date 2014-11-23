//
//  InterfaceController.swift
//  MinionWatchNotificationsDemo WatchKit Extension
//
//  Created by Natasha Murashev on 11/22/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var minionImage: WKInterfaceImage!

    override func handleActionWithIdentifier(identifier: String?,
        forRemoteNotification remoteNotification: [NSObject : AnyObject]) {
        
        if let notificationIdentifier = identifier {
            
            if notificationIdentifier == "showMinionsButtonAction" {
                minionImage.setImageNamed("minions_golf")
            }
        }
    }
    
    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)
        
        // Configure interface objects here.
        NSLog("%@ init", self)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

}
