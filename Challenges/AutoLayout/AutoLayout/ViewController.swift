//
//  ViewController.swift
//  AutoLayout
//
//  Created by Emily Mearns on 5/29/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func textField() {
        
        let textFieldOne = UITextField()
        textFieldOne.placeholder = "Textfield 1"
        textFieldOne.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(textFieldOne)
        
        let xConstraint = NSLayoutConstraint(item: textFieldOne, attribute: .Leading, relatedBy: .Equal, toItem: self.view, attribute: .Leading, multiplier: 1.0, constant: 0)
        self.view.addConstraint(xConstraint)
        
        let yConstraint = NSLayoutConstraint(item: textFieldOne, attribute: .Top, relatedBy: .Equal, toItem: self.view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        self.view.addConstraint(yConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: textFieldOne, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 80)
        self.view.addConstraint(heightConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: textFieldOne, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .Width, multiplier: 1.0, constant: 0.0)
        self.view.addConstraint(widthConstraint)
        
        
//        let textFieldTwo = UITextField(frame: CGRectMake(75, 75, 50, 50))
//        textFieldTwo.placeholder = "Second text field"
//        view.addSubview(textFieldTwo)
        
    }
    
}

