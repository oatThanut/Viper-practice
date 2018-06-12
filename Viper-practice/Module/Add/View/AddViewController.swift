//
//  ViewController.swift
//  Viper-practice
//
//  Created by oatThanut on 11/6/2561 BE.
//  Copyright © 2561 oatThanut. All rights reserved.
//

import UIKit
import SnapKit

class AddViewController: UIViewController {
    
    var presenter = AddPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(textField)
        view.addSubview(textField2)
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
    
    lazy var textField2: UITextField! = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.borderStyle = .roundedRect
        return view
    }()
    
}

//MARK: - Set Constraints
extension AddViewController : UITextFieldDelegate {
    override func updateViewConstraints() {
        addUIConstraints()
        super.updateViewConstraints()
    }
    
    func addUIConstraints() {
        textField.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalToSuperview().offset(50)
            $0.leading.equalToSuperview().offset(24)
            $0.trailing.equalToSuperview().offset(-24)
        }
        
        textField2.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(textField.snp.bottom).offset(16)
            $0.leading.equalToSuperview().offset(24)
            $0.trailing.equalToSuperview().offset(-24)
        }
        
        button.snp.makeConstraints {
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(textField2.snp.bottom).offset(50)
        }
    }
}

