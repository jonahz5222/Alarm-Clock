//
//  ViewController.swift
//  AlarmClock
//
//  Created by Jonah Zukosky on 1/25/18.
//  Copyright © 2018 Zukosky, Jonah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var alarmArray = [Alarm]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarmArray.count
    }

    

    @IBOutlet weak var alarmTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "alarmCell", for: indexPath)
        let alarmItem = alarmArray[indexPath.row]
        cell.textLabel?.text = alarmItem.label
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //Do stuff with selected column here
        
        self.performSegue(withIdentifier: "alarmDetail", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func addAlarm(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? AlarmDetailViewController {
            destination.alarm = alarmArray[(alarmTableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    
}

