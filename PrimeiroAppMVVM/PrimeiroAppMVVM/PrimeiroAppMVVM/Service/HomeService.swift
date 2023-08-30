//
//  HomeService.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Neves dos santos pompeu on 29/08/23.
//

import UIKit
import Alamofire

class HomeService {
    
    func getHomeDataAlamofire(completion: @escaping (HomeData?, Error?) -> Void) {
        let url: String = "https://run.mocky.io/v3/9c7d27c7-43a1-46d9-8dc5-5773c93b6d74"
        
        AF.request(url, method: .get).validate().responseDecodable(of: HomeData.self) { response in
            
            debugPrint(response)
            
            switch response.result {
            case .success(let success):
                print("SUCCESS -> \(#function)")
                completion(success, nil)
            case.failure(let error):
                print("ERROR -> \(#function)")
                completion(nil, error)
            }
            
        }
    }
    
    
    
    
    
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
