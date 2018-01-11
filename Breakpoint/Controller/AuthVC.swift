//
//  AuthVC.swift
//  Breakpoint
//
//  Created by Hayden Jamieson on 09/01/2018.
//  Copyright © 2018 Hayden Jamieson. All rights reserved.
//

import UIKit
import Firebase

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }

    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
        
    }
    @IBAction func signInWithEmailBtnPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    

}
