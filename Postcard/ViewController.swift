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
	@IBOutlet weak var nameLabel: UILabel!
	
	@IBOutlet weak var enterNameTextField: UITextField!
	@IBOutlet weak var enterMessageTextField: UITextField!
	
	@IBOutlet weak var sentMailButton: UIButton!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	@IBAction func sendMailButton(sender: AnyObject) {
		
		// Set the colour of the text in the message and name labels
		nameLabel.textColor = UIColor.blueColor()
		messageLabel.textColor = UIColor.redColor()
		
		// Populate the name and message labels
		nameLabel.text = enterNameTextField.text
		messageLabel.text = "Hello, \(enterMessageTextField.text)"

		// Clear the contents of the text fields
		enterNameTextField.text = ""
		enterMessageTextField.text = ""
		
		// Show the labels when they are ready to be shown
		nameLabel.hidden = false
		messageLabel.hidden = false
		
		// Change the title of the button when it is pressed
		sentMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
		
		// Make the keyboard disappear regardless which text field they edited last
		enterNameTextField.resignFirstResponder()
		enterMessageTextField.resignFirstResponder()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

