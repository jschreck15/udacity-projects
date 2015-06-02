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
       let nextController = UIImagePickerController()
        self.presentViewController(nextController, animated: true, completion: nil)
    }


}

