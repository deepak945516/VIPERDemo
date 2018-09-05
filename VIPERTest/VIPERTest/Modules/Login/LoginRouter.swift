//
//  LoginDefaultRouter.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

protocol LoginRouterProtocol {
    func routeForLogin(viewC: LoginViewController?)
    func routeForSignUp(viewC: LoginViewController?)
}

class LoginRouter: Router, LoginRouterProtocol {
    func routeForLogin(viewC: LoginViewController?) {
        let itemListViewController = ItemListBuilder().main()
        self.pushViewController(viewC: itemListViewController, on: viewC)
    }

    func routeForSignUp(viewC: LoginViewController?) {
        let signUpViewController = SignUpBuilder.createSignUpModule()
        self.pushViewController(viewC: signUpViewController, on: viewC)
    }
}

class Router {
    func pushViewController(viewC: UIViewController?, on viewController: UIViewController?) {
        if let viewC = viewC {
            if let onviewC = viewController {
                onviewC.navigationController?.pushViewController(viewC, animated: true)
            }
        }
    }
}
