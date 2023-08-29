//
//  StoryCollectionViewCell.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Neves dos santos pompeu on 19/08/23.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
        
    static let identifier: String = "StoryCollectionViewCell"
    
    private var screen: StoryCollectionViewCellScreen = StoryCollectionViewCellScreen()

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configScreen()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreen() {
        screen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(screen)
        screen.pin(to: contentView)
    }
    
    public func setupCell(data: Storys, indexPath: IndexPath) {
        screen.profileImageView.image = UIImage(named: data.image ?? "")
        screen.userNameLabel.text = data.userName
        screen.addButton.isHidden = indexPath.row == 0 ? false : true
    }
}
