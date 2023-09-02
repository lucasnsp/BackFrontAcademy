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
        screen?.loginButton.isAccessibilityElement = true
        screen?.titleLabel.isAccessibilityElement = true
        screen?.personImageView.isAccessibilityElement = true
        
        screen?.positionOneLabel.accessibilityTraits = .staticText
        screen?.positionTwoLabel.accessibilityTraits = .staticText
        screen?.positionThreeLabel.accessibilityTraits = .staticText
        screen?.positionFourLabel.accessibilityTraits = .staticText
        screen?.positionFiveLabel.accessibilityTraits = .staticText
        screen?.loginButton.accessibilityTraits = .button
        screen?.titleLabel.accessibilityTraits = .header
        screen?.personImageView.accessibilityTraits = .image
        
        screen?.positionOneLabel.accessibilityLabel = "Posição um"
        screen?.positionTwoLabel.accessibilityLabel = "Posição dois"
        screen?.positionThreeLabel.accessibilityLabel = "Posição tres"
        screen?.positionFourLabel.accessibilityLabel = "Posição quatro"
        screen?.positionFiveLabel.accessibilityLabel = "Posição cinco"
        screen?.personImageView.accessibilityLabel = "Imagem de uma pessoa"
        
        guard let primeiro = screen?.positionOneLabel,
              let segundo = screen?.positionTwoLabel,
              let terceiro = screen?.positionThreeLabel,
              let quarto = screen?.positionFourLabel,
              let quinto = screen?.positionFiveLabel,
              let button = screen?.loginButton,
              let title = screen?.titleLabel,
              let image = screen?.personImageView else { return }
        
        
        view.accessibilityElements = [image,primeiro, segundo, terceiro, quarto, quinto, button, title]
    }
}

extension ViewController: ViewControllerScreenProtocol {
    func tappedLoginButton() {
        UIAccessibility.post(notification: .announcement, argument: "Botão foi pressionado!")
    }
    
    
}

