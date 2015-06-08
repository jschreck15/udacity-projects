//
//  CashTextFieldDelegate.swift
//  ZipCashLock
//
//  Created by Jorden Schreck on 6/8/15.
//  Copyright (c) 2015 Jorden Schreck. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    func textFieldDidBeginEditing(textField: UITextField) {
        if textField.text == "" {
            textField.text = "$0.00"
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        // checking for range.length==1 to allow backspace (delete) key to work
        if string.toInt() != nil || range.length==1 {
            let numberFormatter = NSNumberFormatter()
            numberFormatter.numberStyle = NSNumberFormatterStyle.CurrencyStyle
            numberFormatter.locale = NSLocale(localeIdentifier: "en_US")
            
            var newText = textField.text as NSString
            newText = newText.stringByReplacingCharactersInRange(range, withString: string)
            
            newText = newText.stringByReplacingOccurrencesOfString("$", withString: "")
            newText = newText.stringByReplacingOccurrencesOfString(".", withString: "")
            newText = newText.stringByReplacingOccurrencesOfString(",", withString: "")
            
            var newNumber = Double(newText.doubleValue / 100)
            textField.text = numberFormatter.stringFromNumber(newNumber)
            
            return false
        }
        return false
    }
}
