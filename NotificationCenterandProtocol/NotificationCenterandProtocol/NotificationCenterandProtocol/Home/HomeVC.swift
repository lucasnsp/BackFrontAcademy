//
//  ViewController.swift
//  NotificationCenterandProtocol
//
//  Created by Lucas Neves dos santos pompeu on 14/08/23.
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
        homeScreen?.delegate(delegate: self)
    }


}

extension HomeVC: HomeScreenProtocol {
    func tappedChooseButton() {
        print("protocol funcionando")
        let vc = SelectionVC()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
}
