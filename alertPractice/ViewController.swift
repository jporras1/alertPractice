//
//  ViewController.swift
//  alertPractice
//
//  Created by Javier Porras jr on 11/1/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    let incompleteButton: UIButton = buttonFor(title: "Incomplete Form")
    let invalidButton: UIButton = buttonFor(title: "Invalid Email")
    let unableButton: UIButton = buttonFor(title: "Unable to Retrieve Data")
    
    //MARK: Helpers
    static func buttonFor(title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.darkGray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 25
        return button
    }
    fileprivate func setupViews(){
        view.backgroundColor = .gray
        view.addSubview(incompleteButton)
        view.addSubview(invalidButton)
        view.addSubview(unableButton)
        
        incompleteButton.addTarget(self, action: #selector(aFunc), for: .touchUpInside)
        invalidButton.addTarget(self, action: #selector(bFunc), for: .touchUpInside)
        unableButton.addTarget(self, action: #selector(cFunc), for: .touchUpInside)
        
        invalidButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        invalidButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        invalidButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        invalidButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        incompleteButton.centerXAnchor.constraint(equalTo: invalidButton.centerXAnchor).isActive = true
        incompleteButton.bottomAnchor.constraint(equalTo: invalidButton.topAnchor, constant: -50).isActive = true
        incompleteButton.widthAnchor.constraint(equalTo: invalidButton.widthAnchor).isActive = true
        incompleteButton.heightAnchor.constraint(equalTo: invalidButton.heightAnchor).isActive = true
        
        unableButton.centerXAnchor.constraint(equalTo: invalidButton.centerXAnchor).isActive = true
        unableButton.topAnchor.constraint(equalTo: invalidButton.bottomAnchor, constant: 50).isActive = true
        unableButton.widthAnchor.constraint(equalTo: invalidButton.widthAnchor).isActive = true
        unableButton.heightAnchor.constraint(equalTo: invalidButton.heightAnchor).isActive = true
    }
    @objc func aFunc(){
        Alert.showIncompleteFormAlert(on: self)
    }
    
    @objc func bFunc(){
        Alert.showInvalidEmaileAlert(on: self)
    }
    
    @objc func cFunc(){
        Alert.showUnableToRetrieveAlert(on: self)
    }

    //MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

