//
//  ViewController.swift
//  Postcard
//
//  Created by Todd Millerd on 9/01/2015.
//  Copyright (c) 2015 iCodeApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var messageLabel: UILabel!
	@IBOutlet weak var enterNameTextField: UITextField!
	@IBOutlet weak var enterMessageTextField: UITextField!
	@IBOutlet weak var sentMailButton: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	@IBAction func sendMailButton(sender: AnyObject) {
		// Adding comment to test commits
		messageLabel.textColor = UIColor.redColor()
		messageLabel.text = "Hello \(enterMessageTextField.text)"
		enterMessageTextField.text = ""
		messageLabel.hidden = false
		
		sentMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
		
		
		enterNameTextField.resignFirstResponder()
		enterMessageTextField.resignFirstResponder()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

