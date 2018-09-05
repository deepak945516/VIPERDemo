//
//  LoginDefaultInteractor.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation

protocol LoginInteractorProtocol {
    var entity: LoginEntity? { get set }
    func isValidEmail(email: String) -> Bool
    func isValidPassword(password: String) -> Bool
}

class LoginInteractor: LoginInteractorProtocol {
    var entity: LoginEntity?
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]{3,20}+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }

    func isValidPassword(password: String) -> Bool {
        let passwordRegex = "[A-Za-z0-9]{6,10}"
        let passwordCheck = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordCheck.evaluate(with: password) && !password.isEmpty
    }
}
