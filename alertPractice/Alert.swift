//
//  Alert.swift
//  alertPractice
//
//  Created by Javier Porras jr on 11/1/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

struct Alert {
    private static func showBasicAlert(on viewController: UIViewController, with title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async {
            viewController.present(alert, animated: true, completion: nil)
        }
    }
    
    static func showIncompleteFormAlert(on viewController: UIViewController){
        showBasicAlert(on: viewController, with: "Incomplete Form", message: "Please fill out all fields in the form.")
    }
    
    static func showInvalidEmaileAlert(on viewController: UIViewController){
        showBasicAlert(on: viewController, with: "Invalid Email", message: "Please enter a valid email address")
    }
    
    static func showUnableToRetrieveAlert(on viewController: UIViewController){
        showBasicAlert(on: viewController, with: "Unable to retrieve data", message: "A network error has occurred. Please try again.")
    }
}
