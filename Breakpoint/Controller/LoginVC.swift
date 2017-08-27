//
//  LoginVC.swift
//  Breakpoint
//
//  Created by Marcus Ng on 8/21/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTF: InsetTextField!
    @IBOutlet weak var passwordTF: InsetTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTF.delegate = self
        passwordTF.delegate = self
    }

    @IBAction func signInBtnPressed(_ sender: Any) {
        if emailTF.text != nil && passwordTF.text != nil {
            AuthService.instance.loginUser(withEmail: emailTF.text!, andPassword: passwordTF.text!, loginComplete: { (success, loginError) in
                if success {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
                
                AuthService.instance.registerUser(withEmail: self.emailTF.text!, andPassword: self.passwordTF.text!, userCreationComplete: { (success, registrationError) in
                    if success {
                        AuthService.instance.loginUser(withEmail: self.emailTF.text!, andPassword: self.passwordTF.text!, loginComplete: { (success, nil) in
                            self.dismiss(animated: true, completion: nil)
                            print("Successfully registered user")
                        })
                    } else {
                        print(String(describing: registrationError?.localizedDescription))
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
