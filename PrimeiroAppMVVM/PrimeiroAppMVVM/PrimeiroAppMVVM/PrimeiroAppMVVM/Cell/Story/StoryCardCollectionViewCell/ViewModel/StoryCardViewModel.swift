//
//  StoryCardViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Neves dos santos pompeu on 18/08/23.
//

import UIKit

class StoryCardViewModel {
    
    private var listStory: [Storys]
    
    init(listStory: [Storys]) {
        self.listStory = listStory
    }
    
    public var numberOfItems: Int {
        listStory.count
    }
    
    func loadCurrentStory(indexPath: IndexPath) -> Storys {
        listStory[indexPath.row]
    }
}
