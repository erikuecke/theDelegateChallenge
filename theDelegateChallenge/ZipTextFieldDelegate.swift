//
//  ZipTextFieldDelegate.swift
//  theDelegateChallenge
//
//  Created by Erik Uecke on 5/26/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//
//
import Foundation
import UIKit

class ZipTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
//        let allNumbers = Int(textField.text!)
        
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return newText.length <= 5
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
   
    

    
}
