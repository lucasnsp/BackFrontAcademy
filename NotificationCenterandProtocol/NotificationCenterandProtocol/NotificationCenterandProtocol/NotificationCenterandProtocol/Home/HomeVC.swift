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
        configObserver()
    }
    
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateImac(notification:)), name: Notification.Name("Imac"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook(notification:)), name: Notification.Name("macbook"), object: nil)
    }

    @objc func updateImac(notification: NSNotification) {
        homeScreen?.logoImageView.image = UIImage(named: "Imac_pro")
        homeScreen?.descriptionLabel.text = "Imac das galaxias"
        view.backgroundColor = .cyan
    }
    
    @objc func updateMacbook(notification: NSNotification) {
        homeScreen?.logoImageView.image = UIImage(named: "macbook_pro")
        homeScreen?.descriptionLabel.text = "MacBook Pro"
        view.backgroundColor = .red
    }

}

extension HomeVC: HomeScreenProtocol {
    func tappedChooseButton() {
        let vc = SelectionVC()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate(delegate: self)
        present(vc, animated: true)
    }
    
    
}

extension HomeVC: SelectionVCProtocol {
    func updateImac() {
        homeScreen?.logoImageView.image = UIImage(named: "Imac_pro")
        homeScreen?.descriptionLabel.text = "Imac das galaxias"
        view.backgroundColor = .cyan
    }
    
    func updateMacbook() {
        homeScreen?.logoImageView.image = UIImage(named: "macbook_pro")
        homeScreen?.descriptionLabel.text = "MacBook Pro"
        view.backgroundColor = .red
    }
    
    
}
