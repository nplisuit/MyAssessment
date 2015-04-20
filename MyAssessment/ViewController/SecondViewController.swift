//
//  SecondViewController.swift
//  MyAssessment
//
//  Created by Nguyen Phuc Loc on 4/20/15.
//
//

import UIKit

@objc protocol SecondViewControllerDelegate{
    optional func secondViewOneTwoThreeClick(sender:AnyObject)
    optional func secondViewBackButtonClick()
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var btnOne: UIButton?
    @IBOutlet weak var btnTwo: UIButton?
    @IBOutlet weak var btnThree: UIButton?
    var delegate:SecondViewControllerDelegate?
    var backgroundColor: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK:IBActions
    
    @IBAction func ottButtonClick(sender: AnyObject) {
        self.delegate?.secondViewOneTwoThreeClick!(sender)
    }
    
    @IBAction func goLastButtonClick(sender: AnyObject) {
        self.performSegueWithIdentifier("GoThirdSegue", sender: sender)
    }

}
