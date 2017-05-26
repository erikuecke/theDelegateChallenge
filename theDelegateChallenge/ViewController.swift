//
//  ViewController.swift
//  theDelegateChallenge
//
//  Created by Erik Uecke on 5/26/17.
//  Copyright © 2017 Erik Uecke. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var dollorTextField: UITextField!
    @IBOutlet weak var switchTextField: UITextField!
    @IBOutlet weak var switchControl: UISwitch!
    
    let zipDelegate = ZipTextFieldDelegate()
    let dollarDelegate = DollarTextFieldDelagete()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Assigning delegates
        self.zipTextField.delegate = zipDelegate
        self.dollorTextField.delegate = dollarDelegate
        self.switchTextField.delegate = self
        
        switchControl.setOn(false, animated: true)
    
    }
    
    // Allow or Disallow editing of switchTextField
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if switchControl.isOn {
            return true
        } else {
            return false
        }
    }
    
    // Turn off the editing mode after each edit
    func textFieldDidEndEditing(_ textField: UITextField) {
        switchControl.setOn(false, animated: true)
    }

    // Turn off editng and canceling first responder if return button hit
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switchTextField.resignFirstResponder()
        switchControl.setOn(false, animated: true)
        
        return true
    }
    


}

