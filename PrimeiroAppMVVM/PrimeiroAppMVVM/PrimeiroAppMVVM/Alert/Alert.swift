//
//  Alert.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Neves dos santos pompeu on 25/08/23.
//

import UIKit

class Alert {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    public func showAlertInformation(title: String, message: String) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        ac.addAction(ok)
        controller.present(ac, animated: true)
    }
}
