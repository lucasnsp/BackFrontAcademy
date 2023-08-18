//
//  HomeViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Neves dos santos pompeu on 18/08/23.
//

import UIKit

class HomeViewModel {
    
    private var story = [
        Storys(image: "img1", userName: "Add Story"),
        Storys(image: "img2", userName: "jack"),
        Storys(image: "img3", userName: "carolina"),
        Storys(image: "img4", userName: "samuel"),
        Storys(image: "img5", userName: "ariana josep"),
        Storys(image: "img6", userName: "puggy_101"),
        Storys(image: "img7", userName: "dheeraj_ks"),
    ]
    
    public var getListStory: [Storys] {
        story
    }

   public var numberOfItems: Int {
        1
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
}
