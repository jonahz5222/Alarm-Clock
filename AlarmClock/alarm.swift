//
//  alarm.swift
//  AlarmClock
//
//  Created by Jonah Zukosky on 1/25/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import Foundation

class Alarm {
    var time : NSDate?
    var repeater : NSDate? //Might want to make this an enum
    //var ringtone :
    var snoozable : Bool!
    var label: String?
    
    init(label: String,time: NSDate,repeater: NSDate,snoozable: Bool){
        self.label = label
        self.time = time
        self.repeater = repeater
        self.snoozable = snoozable
    }
    
}
