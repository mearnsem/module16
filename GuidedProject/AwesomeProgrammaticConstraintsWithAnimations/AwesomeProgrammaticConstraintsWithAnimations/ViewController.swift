//
//  ViewController.swift
//  AwesomeProgrammaticConstraintsWithAnimations
//
//  Created by Emily Mearns on 5/30/16.
//  Copyright © 2016 Emily Mearns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Buttons

    let topLeftButton = UIButton()
    let topRightButton = UIButton()
    let bottomLeftButton = UIButton()
    let bottomRightButton = UIButton()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtons()
        
    }
    
    func setupButtons() {
        topLeftButton.backgroundColor = .greenColor()
        topRightButton.backgroundColor = .yellowColor()
        bottomLeftButton.backgroundColor = .blueColor()
        bottomRightButton.backgroundColor = .redColor()
        
        topLeftButton.addTarget(self, action: #selector(buttonTapped), forControlEvents: .TouchUpInside)
        topRightButton.addTarget(self, action: #selector(buttonTapped), forControlEvents: .TouchUpInside)
        bottomLeftButton.addTarget(self, action: #selector(buttonTapped), forControlEvents: .TouchUpInside)
        bottomRightButton.addTarget(self, action: #selector(buttonTapped), forControlEvents: .TouchUpInside)
        
        topLeftButton.addTarget(self, action: #selector(buttonTouchUpOutside), forControlEvents: .TouchUpOutside)
        topRightButton.addTarget(self, action: #selector(buttonTouchUpOutside), forControlEvents: .TouchUpOutside)
        bottomLeftButton.addTarget(self, action: #selector(buttonTouchUpOutside), forControlEvents: .TouchUpOutside)
        bottomRightButton.addTarget(self, action: #selector(buttonTouchUpOutside), forControlEvents: .TouchUpOutside)
        
        view.addSubview(topLeftButton)
        view.addSubview(topRightButton)
        view.addSubview(bottomLeftButton)
        view.addSubview(bottomRightButton)
        
        setupConstraints()
    }
    
    func buttonTapped() {
        let topLeftColor = topLeftButton.backgroundColor
        let topRightColor = topRightButton.backgroundColor
        let bottomRightColor = bottomRightButton.backgroundColor
        let bottomLeftColor = bottomLeftButton.backgroundColor
        
        UIView.animateWithDuration(1.0) { 
            self.topRightButton.backgroundColor = topLeftColor
            self.bottomRightButton.backgroundColor = topRightColor
            self.bottomLeftButton.backgroundColor = bottomRightColor
            self.topLeftButton.backgroundColor = bottomLeftColor
        }
    }
    
    func buttonTouchUpOutside() {
        
    }
    
    func setupConstraints() {
        topLeftButton.translatesAutoresizingMaskIntoConstraints = false
        topRightButton.translatesAutoresizingMaskIntoConstraints = false
        bottomLeftButton.translatesAutoresizingMaskIntoConstraints = false
        bottomRightButton.translatesAutoresizingMaskIntoConstraints = false
        
        let topButtonWidth = NSLayoutConstraint(item: topLeftButton, attribute: .Width, relatedBy: .Equal, toItem: topRightButton, attribute: .Width, multiplier: 1.0, constant: 0)
        let leftButtonHeight = NSLayoutConstraint(item: topLeftButton, attribute: .Height, relatedBy: .Equal, toItem: bottomLeftButton, attribute: .Height, multiplier: 1.0, constant: 0)
        let bottomButtonWidth = NSLayoutConstraint(item: bottomLeftButton, attribute: .Width, relatedBy: .Equal, toItem: bottomRightButton, attribute: .Width, multiplier: 1.0, constant: 0)
        let rightButtonHeight = NSLayoutConstraint(item: topRightButton, attribute: .Height, relatedBy: .Equal, toItem: bottomRightButton, attribute: .Height, multiplier: 1.0, constant: 0)
        
        view.addConstraints([topButtonWidth, leftButtonHeight, bottomButtonWidth, rightButtonHeight])
        
        let topLeftButtonLeadingConstraint = NSLayoutConstraint(item: topLeftButton, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let topLeftButtonTopConstraint = NSLayoutConstraint(item: topLeftButton, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0)
        let topRightButtonTrailingConstraint = NSLayoutConstraint(item: topRightButton, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let topRightButtonTopConstraint = NSLayoutConstraint(item: topRightButton, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 0)
        
        let bottomLeftButtonLeadingConstraint = NSLayoutConstraint(item: bottomLeftButton, attribute: .Leading, relatedBy: .Equal, toItem: view, attribute: .Leading, multiplier: 1.0, constant: 0)
        let bottomLeftButtonBottomConstraint = NSLayoutConstraint(item: bottomLeftButton, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        let bottomRightButtonTrailingConstraint = NSLayoutConstraint(item: bottomRightButton, attribute: .Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        let bottomRightButtonBottomConstraint = NSLayoutConstraint(item: bottomRightButton, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
        
        view.addConstraints([topLeftButtonLeadingConstraint, topLeftButtonTopConstraint, topRightButtonTrailingConstraint, topRightButtonTopConstraint, bottomLeftButtonLeadingConstraint, bottomLeftButtonBottomConstraint, bottomRightButtonTrailingConstraint, bottomRightButtonBottomConstraint])
        
        let topLeftTrailingToTopRightLeadingConstraint = NSLayoutConstraint(item: topLeftButton, attribute: .Trailing, relatedBy: .Equal, toItem: topRightButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        let topLeftBottomToBottomLeftTopConstraint = NSLayoutConstraint(item: topLeftButton, attribute: .Bottom, relatedBy: .Equal, toItem: bottomLeftButton, attribute: .Top, multiplier: 1.0, constant: 0)
        let topRightBottomToBottomRightTopConstraint = NSLayoutConstraint(item: topRightButton, attribute: .Bottom, relatedBy: .Equal, toItem: bottomRightButton, attribute: .Top, multiplier: 1.0, constant: 0)
        let bottomLeftTrailingToBottomRightLeadingConstraint = NSLayoutConstraint(item: bottomLeftButton, attribute: .Trailing, relatedBy: .Equal, toItem: bottomRightButton, attribute: .Leading, multiplier: 1.0, constant: 0)
        
        view.addConstraints([topLeftTrailingToTopRightLeadingConstraint, topLeftBottomToBottomLeftTopConstraint, topRightBottomToBottomRightTopConstraint, bottomLeftTrailingToBottomRightLeadingConstraint])
        
        
    }


}










