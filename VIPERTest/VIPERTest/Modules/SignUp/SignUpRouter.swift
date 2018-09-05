//
//  SignUpRouter.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 05/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

protocol SignUpRouterProtocol {
    func routeForSubmit(view: SignUpViewController?)
}

class SignUpRouter: SignUpRouterProtocol {
    func routeForSubmit(view: SignUpViewController?) {
        view?.navigationController?.popViewController(animated: true)
    }
    
}
