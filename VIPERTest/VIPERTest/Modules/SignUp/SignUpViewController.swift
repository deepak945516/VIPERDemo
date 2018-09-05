//
//  SignUpViewController.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 05/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

protocol SignUpViewControllerProtocol: class {
    var presenter: SignUpPresenter? { get set}
}

class SignUpViewController: UIViewController, SignUpViewControllerProtocol {
    // MARK: - Properties
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!

    var presenter: SignUpPresenter?

    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    // MARK: - Private Methods

    // MARK: - IBAction Methods
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        presenter?.submitButtonTapped()
    }

}

// MARK: - TextField Delegate
extension SignUpViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case usernameTextField:
            emailTextField.becomeFirstResponder()
        case emailTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            confirmPasswordTextField.becomeFirstResponder()
        default:
            self.view.endEditing(true)
        }
        return true
    }
}


