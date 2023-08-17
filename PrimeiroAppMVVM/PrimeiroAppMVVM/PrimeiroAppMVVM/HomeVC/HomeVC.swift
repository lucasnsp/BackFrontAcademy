//
//  ViewController.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Neves dos santos pompeu on 17/08/23.
//

import UIKit

class HomeVC: UIViewController {

    var homeScreen: HomeScreen?
    
    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

