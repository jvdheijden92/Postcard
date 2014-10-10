//
//  ViewController.swift
//  Postcard
//
//  Created by Jordy van der Heijden on 03/10/14.
//  Copyright (c) 2014 DBF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldMessage: UITextField!
    @IBOutlet weak var butttonSendMail: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        
        labelMessage.hidden = false
        labelMessage.text = textFieldName.text
        labelMessage.textColor = UIColor.redColor()
        
        textFieldName.text = ""
        textFieldName.resignFirstResponder()
        
        butttonSendMail.setTitle("Mail sent", forState: UIControlState.Normal)
    }

}

