//
//  LoginDefaultPresenter.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

protocol LoginPresenterProtocol: class {
    var view: LoginViewController? { get set }
    var interactor: LoginInteractor? { get set }
    var router: LoginRouter? { get set }
    func loginButtonTapped()
    func signUpButtonTapped()
    func isValidEmail(email: String) -> Bool
    func isValidPassword(password: String) -> Bool
}

class LoginPresenter: LoginPresenterProtocol {
    weak var view: LoginViewController?
    var interactor: LoginInteractor?
    var router: LoginRouter?

    func loginButtonTapped() {
        router?.routeForLogin(viewC: view)
    }

    func signUpButtonTapped() {
        router?.routeForSignUp(viewC: view)
    }

    func isValidEmail(email: String) -> Bool {
        return (interactor?.isValidEmail(email: email))!
    }

    func isValidPassword(password: String) -> Bool {
        return (interactor?.isValidPassword(password: password))!
    }

}
