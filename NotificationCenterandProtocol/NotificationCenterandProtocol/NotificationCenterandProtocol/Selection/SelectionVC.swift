//
//  SelectionVC.swift
//  NotificationCenterandProtocol
//
//  Created by Lucas Neves dos santos pompeu on 14/08/23.
//

import UIKit

class SelectionVC: UIViewController {

    var selectionScreen: SelectionScreen?
    
    override func loadView() {
        selectionScreen = SelectionScreen()
        view = selectionScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

}
