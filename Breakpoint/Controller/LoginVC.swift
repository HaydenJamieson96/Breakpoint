//
//  LoginVC.swift
//  Breakpoint
//
//  Created by Hayden Jamieson on 09/01/2018.
//  Copyright © 2018 Hayden Jamieson. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.delegate = self
        passwordField.delegate = self
    }

    @IBAction func signInBtnPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginComplete: { (success, error) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing:error?.localizedDescription))
                }
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, error) in
                    if success {
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, nil) in
                            print("Successfully reigstered user")
                            self.dismiss(animated: true, completion: nil)
                        })
                    } else {
                        print(String(describing: error?.localizedDescription))
                    }
                })
            })
        }
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension LoginVC: UITextFieldDelegate {
    
}
