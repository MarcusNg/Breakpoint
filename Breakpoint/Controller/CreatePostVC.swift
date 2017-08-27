//
//  CreatePostVC.swift
//  Breakpoint
//
//  Created by Marcus Ng on 8/27/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import UIKit
import Firebase

class CreatePostVC: UIViewController {

    // Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
    }

    @IBAction func sendBtnPressed(_ sender: Any) {
        if textView.text != nil && textView.text != "say something here..." {
            sendBtn.isEnabled = false
            DataService.instance.uploadPost(withMessage: textView.text, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil, sendComplete: { (isComplete) in
                if isComplete {
                    self.sendBtn.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                } else {
                    self.sendBtn.isEnabled = false
                    print("Create post error!")
                }
            })
        }
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension CreatePostVC: UITextViewDelegate {
    
    // Clear text field on edit
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
    
}
