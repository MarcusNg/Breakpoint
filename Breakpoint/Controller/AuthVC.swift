//
//  AuthVC.swift
//  Breakpoint
//
//  Created by Marcus Ng on 8/22/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signinWithEmailBtnPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func facebookSignInBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func googleSignInBtnPressed(_ sender: Any) {
        
    }
    
}
