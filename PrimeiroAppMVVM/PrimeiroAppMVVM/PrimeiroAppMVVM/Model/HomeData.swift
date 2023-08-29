//
//  HomeData.swift
//  PrimeiroAppMVVM
//
//  Created by Lucas Neves dos santos pompeu on 29/08/23.
//

import UIKit

/*
 
 ### Decodable

 - Decodifica → Transforma um Json em um Objeto

 ### Encodable

 - Codifica → Codifica um objeto ou seja, tornar um tipo de dado no Swift em Json

 ### Codable

 - Ele codifica e decodifica
 
 */

struct HomeData: Codable {
    var stories: [Storys]?
    var posts: [Posts]?
}
