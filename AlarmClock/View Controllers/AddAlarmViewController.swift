//
//  AddAlarmViewController.swift
//  AlarmClock
//
//  Created by Jonah Zukosky on 2/8/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class AddAlarmViewController: UIViewController {


    @IBOutlet weak var timePicker: UIDatePicker!
    @IBAction func addAlarm(_ sender: Any) {
        //timePicker.date
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
