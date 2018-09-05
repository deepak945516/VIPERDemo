//
//  SignUpBuilder.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 05/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

class SignUpBuilder {
    class func createSignUpModule() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        guard let signUpViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController else { return UIViewController() }
        let presenter = SignUpPresenter()
        let router = SignUpRouter()
        let interactor = SignUpInteractor()
        let entity = SignUpEntity()
        signUpViewController.presenter = presenter
        presenter.view = signUpViewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.entity = entity
        return signUpViewController
    }
}
