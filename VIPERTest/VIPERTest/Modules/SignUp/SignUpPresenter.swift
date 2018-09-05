//
//  SignUpPresenter.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 05/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation

protocol SignUpPresenterProtocol: class {
    var view: SignUpViewController? { set get }
    var router: SignUpRouter? { set get }
    var interactor: SignUpInteractor? { set get }
    func submitButtonTapped()
}

class SignUpPresenter: SignUpPresenterProtocol {
    var router: SignUpRouter?
    
    var interactor: SignUpInteractor?
    
    var view: SignUpViewController?
    
    func submitButtonTapped() {
        router?.routeForSubmit(view: view)
    }
}
