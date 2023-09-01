//
//  ViewController.swift
//  ProjetoAcessibilidade
//
//  Created by Lucas Neves dos santos pompeu on 01/09/23.
//

import UIKit

class ViewController: UIViewController {

    var screen: ViewControllerScreen?
    
    override func loadView() {
        screen = ViewControllerScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)
    }
    
    func configAcessibility() {
        screen?.positionOneLabel.isAccessibilityElement = true
        screen?.positionTwoLabel.isAccessibilityElement = true
        screen?.positionThreeLabel.isAccessibilityElement = true
        screen?.positionFourLabel.isAccessibilityElement = true
        screen?.positionFiveLabel.isAccessibilityElement = true
    }
}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginButton() {
        print(#function)
    }
    
    
}

