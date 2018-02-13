//
//  AlarmDetailViewController.swift
//  AlarmClock
//
//  Created by Jonah Zukosky on 1/26/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class AlarmDetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var alarm:Alarm?
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = alarm?.label
        
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
