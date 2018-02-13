//
//  alarm.swift
//  AlarmClock
//
//  Created by Jonah Zukosky on 1/25/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import Foundation

class Alarm {
    var time : Date
    var repeats : [Repeater]
    //var snoozable : Bool!
    var label: String?
    
    init(label: String,time: Date,repeats: [Repeater]){
        self.label = label
        self.time = time
        self.repeats = repeats
        
        //self.snoozable = snoozable
    }
    
}
