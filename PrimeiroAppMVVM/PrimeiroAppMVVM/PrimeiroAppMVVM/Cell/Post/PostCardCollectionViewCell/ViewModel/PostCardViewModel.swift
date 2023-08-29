//
//  PostCardViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Neves dos santos pompeu on 21/08/23.
//

import UIKit

class PostCardViewModel: NSObject {
    
    private var listPosts: [Posts]
    
    init(listPosts: [Posts]) {
        self.listPosts = listPosts
    }
    
    public var numberOfItems: Int {
        listPosts.count
    }
    
    public func loadCurrentPosts(indexPath: IndexPath) -> Posts {
        listPosts[indexPath.row]
    }
}

