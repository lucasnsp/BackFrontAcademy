//
//  SelectionVC.swift
//  NotificationCenterandProtocol
//
//  Created by Lucas Neves dos santos pompeu on 14/08/23.
//

import UIKit

protocol SelectionVCProtocol: AnyObject {
    func updateImac()
    func updateMacbook()
}

class SelectionVC: UIViewController {
    
    private weak var delegate: SelectionVCProtocol?
    
    public func delegate(delegate: SelectionVCProtocol?) {
        self.delegate = delegate
    }

    var selectionScreen: SelectionScreen?
    
    override func loadView() {
        selectionScreen = SelectionScreen()
        view = selectionScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectionScreen?.delegate(delegate: self)
    }
    

}

extension SelectionVC: SelectionScreenProtocol {
    func tappedMacbookButton() {
        print(#function)
//        NotificationCenter.default.post(name: Notification.Name("macbook"), object: nil)
        delegate?.updateMacbook()
        dismiss(animated: true)
    }
    
    func tappedImacButton() {
        print(#function)
//        NotificationCenter.default.post(name: Notification.Name("Imac"), object: nil)
        delegate?.updateImac()
        dismiss(animated: true)
    }
    
    
}
