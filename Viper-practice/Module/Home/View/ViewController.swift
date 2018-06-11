//
//  ViewController.swift
//  Viper-practice
//
//  Created by oatThanut on 11/6/2561 BE.
//  Copyright © 2561 oatThanut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var presenter = Presenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(textField)
        view.addSubview(button)
        view.setNeedsUpdateConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    lazy var button: UIButton! = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.addTarget(self, action: #selector(ViewController.buttonPressed), for: .touchDown)
        view.setTitle("Press Me!", for: .normal)
        view.backgroundColor = UIColor.blue
        return view
    }()

    lazy var textField: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.borderStyle = .roundedRect
        return view
    }()
    
//    @objc func buttonPressed() {
//        print(".........>>>>>><<<<<<<")
//    }
}

extension ViewController : UITextFieldDelegate {
    
    
    
    override func updateViewConstraints() {
        textFieldConstraints()
        buttonConstraints()
        super.updateViewConstraints()
    }
    
    func textFieldConstraints() {
        // Center Text Field Relative to Page View
        NSLayoutConstraint(
            item: textField,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: textField,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Y Position 10% Down From the Top of the Page View
        NSLayoutConstraint(
            item: textField,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.1,
            constant: 0.0)
            .isActive = true
    }
    
    func buttonConstraints() {
        // Center button in Page View
        NSLayoutConstraint(
            item: button,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set Width to be 30% of the Page View Width
        NSLayoutConstraint(
            item: button,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.3,
            constant: 0.0)
            .isActive = true
        
        // Set Y Position Relative to Bottom of Page View
        NSLayoutConstraint(
            item: button,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.9,
            constant: 0.0)
            .isActive = true
    }
}

