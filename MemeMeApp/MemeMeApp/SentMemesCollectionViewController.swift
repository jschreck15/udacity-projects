//
//  SentMemesCollectionViewController.swift
//  MemeMeApp
//
//  Created by Jorden Schreck on 7/8/15.
//  Copyright (c) 2015 Jorden Schreck. All rights reserved.
//

import Foundation
import UIKit

class SentMemesCollectionViewController : UIViewController {
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    var memes: [Meme]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let applicationDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
        memes = applicationDelegate.memes
    }
}