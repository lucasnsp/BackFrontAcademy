//
//  UIViewController+Extension.swift
//  AppBackFront
//
//  Created by Lucas Neves dos santos pompeu on 04/09/23.
//

import Foundation
import UIKit

extension UIViewController {
    func dismissKeyboard() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
}
