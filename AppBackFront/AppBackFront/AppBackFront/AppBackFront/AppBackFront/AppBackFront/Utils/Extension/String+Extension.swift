//
//  String+Extension.swift
//  AppBackFront
//
//  Created by Lucas Neves dos santos pompeu on 04/09/23.
//

import Foundation

public enum ValidType {
    case email
    case password
}

extension String {
    
    enum Regex: String {
        case email = "[A-Z0-9a-z,_% +-]+@[A-Za-z0-9,-]+\\.[A-Za-z]{2,64}"
        case password = ".{6,}"
    }
    
    func isValid(validType: ValidType) -> Bool {
        let format = "SELF MATCHES %@"
        var regex = ""
        
        switch validType {
        case.email:
            regex = Regex.email.rawValue
        case.password:
            regex = Regex.password.rawValue
        }
        return NSPredicate(format: format, regex).evaluate(with: self)
    }
}
