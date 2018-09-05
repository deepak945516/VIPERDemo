//
//  LoginDefaultViewController.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

protocol LoginViewControllerProtocol: class {
    var presenter: LoginPresenter? { get set }
}

class LoginViewController: UIViewController, LoginViewControllerProtocol {
    // MARK: - Properties
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!

    var presenter: LoginPresenter?

    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func viewWillAppear(_ animated: Bool) {
        AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.portrait, andRotateTo: UIInterfaceOrientation.portrait)
    }

    // MARK: - Private Methods
    private func initialSetup() {
        self.navigationItem.title = "Login"
    }

    // MARK: - IBAction Methods
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        if (presenter?.isValidEmail(email: usernameTextField.text!))! {
            presenter?.loginButtonTapped()
            if UIDevice.current.userInterfaceIdiom == .pad {
                AppDelegate.AppUtility.lockOrientation(UIInterfaceOrientationMask.landscapeRight, andRotateTo: UIInterfaceOrientation.landscapeRight)
            }
        } else {
            let alertController = UIAlertController.init(title: "VIPER", message: "Please enter a valid email", preferredStyle: .alert)
            let okButton = UIAlertAction.init(title: "OK", style: .cancel) { (okButton) in
                print("Ok button tapped")
            }
            let meassage = NSAttributedString(string: "Plaes enter a valid email", attributes: [NSAttributedStringKey.foregroundColor: UIColor.red])
            alertController.setValue(meassage, forKey: "attributedMessage")
            alertController.addAction(okButton)
            self.present(alertController, animated: true, completion: nil)
        }
    }

    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        presenter?.signUpButtonTapped()
    }
}

// MARK: - TextField Delegate
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case usernameTextField:
            passwordTextField.becomeFirstResponder()
        default:
            self.view.endEditing(true)
        }
        return true
    }
}
