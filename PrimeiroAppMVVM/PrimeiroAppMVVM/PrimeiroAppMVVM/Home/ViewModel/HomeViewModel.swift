//
//  HomeViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Neves dos santos pompeu on 18/08/23.
//

import UIKit

protocol HomeViewModelProtocol: AnyObject {
    func success()
    func error()
}

class HomeViewModel {
    private var service: HomeService = HomeService()
    private var posts = [Posts]()
    private var story = [Storys]()
    
    private weak var delegate: HomeViewModelProtocol?
    
    public func delegate(delegate: HomeViewModelProtocol?) {
        self.delegate = delegate
    }
    
    public var getListPosts: [Posts] {
        posts
    }
    
    public var getListStory: [Storys] {
        story
    }

   public var numberOfItems: Int {
        2
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {
            return CGSize(width: 120, height: frame.height)
        } else {
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }
    
    public func fetchAllRequest() {
        service.getHomeDataAlamofire { homeData, error in
            if error == nil {
                self.posts = homeData?.posts ?? []
                self.story = homeData?.stories ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
