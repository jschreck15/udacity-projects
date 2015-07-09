//
//  MemeMe.swift
//  MemeMeApp
//
//  Created by Jorden Schreck on 7/9/15.
//  Copyright (c) 2015 Jorden Schreck. All rights reserved.
//

import Foundation
import UIKit

//Meme Class
class Meme : NSObject {
    var topText:String?
    var bottomText:String?
    var originalImage:UIImage?
    var memedImage:UIImage!
    
    init(topMemeText: String, bottomMemeText: String, originalImage: UIImage, memedImage: UIImage) {
        self.topText = topMemeText
        self.bottomText = bottomMemeText
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
}