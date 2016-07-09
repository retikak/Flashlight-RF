//
//  ViewController.swift
//  Flashlight-RF
//
//  Created by Retika Kumar on 7/4/16.
//  Copyright © 2016 kumar.retika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //great work
    
    @IBOutlet weak var buttonToggle: UIButton!
    
    @IBOutlet weak var bluebutton: UIButton!
    var isOn:Bool = false
    var isOff:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonToggled(sender: AnyObject) {
        if isOn {
            
            self.isOn = false
            self.buttonToggle.setTitle("make green", forState: .Normal)
            self.view.backgroundColor = UIColor.redColor()
            
        } else {
            self.isOn = true
            self.buttonToggle.setTitle("make red", forState: .Normal)
            self.view.backgroundColor = UIColor.greenColor()
            
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func blueButtonTapped(sender: AnyObject) {
        if isOff {
            self.isOff = false
        
        self.view.backgroundColor = UIColor.blueColor()
        self.bluebutton.setTitle("All is blue", forState: .Normal)
        } else {
            self.isOff = true
            self.view.backgroundColor = UIColor.whiteColor()
            self.bluebutton.setTitle("set back to blue", forState: .Normal)
            
        }
    }
}

