//
//  SingUpEntity.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 05/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation

protocol SignUpEntityProtocol {
    var username: String? { get set }
    var email: String? { get set }
    var password: String? { get set}
    var confirmPassword: String? { get set}
}
class SignUpEntity: SignUpEntityProtocol {
    var username: String?
    var email: String?
    var password: String?
    var confirmPassword: String?
}
