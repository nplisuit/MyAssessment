//
//  ThirdViewController.swift
//  MyAssessment
//
//  Created by Nguyen Phuc Loc on 4/20/15.
//
//

import UIKit

class ThirdViewController: UITableViewController {
    
    var dateRender:NSDate?

    override func viewDidLoad() {
        super.viewDidLoad()
        dateRender = NSDate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: UITableViewDelegate

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell
        dateRender = NSDate.addOneDayForDate(dateRender!)
        cell.textLabel?.text = "\(NSDate.formatDate(dateRender!))"
        return cell
    }

}
