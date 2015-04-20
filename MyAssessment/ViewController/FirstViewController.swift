//
//  FirstViewController.swift
//  MyAssessment
//
//  Created by Nguyen Phuc Loc on 4/20/15.
//
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var btnBlue: UIButton?
    @IBOutlet weak var btnRed: UIButton?
    @IBOutlet weak var btnGreen: UIButton?
    @IBOutlet weak var btnNone: UIButton?
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK:Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "GoSecondSegue"){
            (segue.destinationViewController as! SecondViewController).backgroundColor = (sender as! UIButton).backgroundColor
            (segue.destinationViewController as! SecondViewController).delegate = self
        }
    }
    
    // MARK:IBActions
    
    @IBAction func brgButtonClick(sender: AnyObject) {
        self.performSegueWithIdentifier("GoSecondSegue", sender: sender)
        self.btnNone?.setTitle("None", forState: UIControlState.Normal)
    }
}

extension FirstViewController:SecondViewControllerDelegate{
    
    func secondViewOneTwoThreeClick(sender: AnyObject) {
        let buttonTitle = (sender as? UIButton)?.titleLabel?.text
        self.btnNone?.setTitle("button pressed is ".stringByAppendingString(buttonTitle!), forState: UIControlState.Normal)
    }
}
