//
//  SignUpInteractor.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 05/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation

protocol SignUpInteractorProtocol {
    var entity: SignUpEntity? { get set}
}

class SignUpInteractor: SignUpInteractorProtocol {
    var entity: SignUpEntity?
}
