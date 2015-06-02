//
//  ViewController.swift
//  experiment
//
//  Created by Jorden Schreck on 6/2/15.
//  Copyright (c) 2015 Jorden Schreck. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func experiment() {
        let controller = UIAlertController()
        controller.title = "Welcome to the title of our Alert Modal"
        controller.message = "This is a test to make sure that the text area will auto size with the modal and will not just go of of the screen line break and more text"
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.Default) { action in self.dismissViewControllerAnimated(true, completion: nil)}
        
        controller.addAction(okAction)
        self.presentViewController(controller, animated: true, completion: nil)
    }


}

