//
//  ZipTextFieldDelegate.swift
//  ZipCashLock
//
//  Created by Jorden Schreck on 6/8/15.
//  Copyright (c) 2015 Jorden Schreck. All rights reserved.
//

import Foundation
import UIKit

class ZipTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        // checking for range.length==1 to allow backspace (delete) key to work
        if string.toInt() != nil || range.length==1 {
            var newText = textField.text as NSString
            newText = newText.stringByReplacingCharactersInRange(range, withString: string)
            if newText.length < 6 {
                return true
            }
        }
        return false
    }
}
