//
//  ViewController.swift
//  AppBackFront
//
//  Created by Lucas Neves dos santos pompeu on 12/08/23.
//

import UIKit

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

