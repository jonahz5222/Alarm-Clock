//
//  ViewController.swift
//  AlarmClock
//
//  Created by Jonah Zukosky on 1/25/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    
    var alarmArray = [Alarm]()
    let dateFormatter = DateFormatter()
    var timeComponents = DateComponents()
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return alarmArray.count
        return 3
    }

    

    @IBOutlet weak var alarmTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dateFormatter.timeStyle = .short
        
        timeComponents.hour = 8
        timeComponents.minute = 30
        
        let userCalendar = Calendar.current
        let someTime = userCalendar.date(from: timeComponents)
        
        
        
        let alarm1 = Alarm.init(label: "alarm1",time: someTime!)
        let alarm2 = Alarm.init(label: "alarm2",time: someTime!)
        let alarm3 = Alarm.init(label: "alarm3",time: someTime!)
        alarmArray.append(alarm1)
        alarmArray.append(alarm2)
        alarmArray.append(alarm3)
        
        
        alarmTableView.dataSource = self
        alarmTableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "alarmCell", for: indexPath) as! AlarmTableViewCell
        let alarmItem = alarmArray[indexPath.row]
        cell.nameLabel.text = alarmItem.label
        
        
        let time = dateFormatter.string(from: alarmItem.time)
        
        cell.timeLabel.text = time
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Do stuff with selected column here
        
        self.performSegue(withIdentifier: "alarmDetail", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AlarmDetailViewController {
            destination.alarm = alarmArray[(alarmTableView.indexPathForSelectedRow?.row)!]
        }
        
        let backItem = UIBarButtonItem()
        backItem.title = "Cancel"
        navigationItem.backBarButtonItem = backItem
    }
    
    
}

