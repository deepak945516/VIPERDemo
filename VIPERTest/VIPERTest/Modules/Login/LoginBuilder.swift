//
//  LoginDefaultBuilder.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

class LoginBuilder {

    class func createLoginModule() -> UIViewController {
        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        let router = LoginRouter()
        let entity = LoginEntity()

        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController else { return UIViewController() }
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        interactor.entity = entity
        return view
    }

    deinit {
        print("deinit - \(type(of: self))")
    }
}
