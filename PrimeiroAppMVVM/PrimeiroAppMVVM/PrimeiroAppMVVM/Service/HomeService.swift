//
//  HomeService.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Neves dos santos pompeu on 29/08/23.
//

import UIKit

class HomeService {
    
    func getHomeDatajson(completion: @escaping (HomeData?, Error?) -> Void) {
        if let url = Bundle.main.url(forResource: "HomeData", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let homeData: HomeData = try JSONDecoder().decode(HomeData.self, from: data)
                completion(homeData, nil)
            } catch {
                completion(nil, error)
            }
        }
    }
}
