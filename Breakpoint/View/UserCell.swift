//
//  UserCell.swift
//  Breakpoint
//
//  Created by Marcus Ng on 8/29/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var checkImg: UIImageView!
    
    func configureCell(profileImg: UIImage, email: String, isSelected: Bool) {
        self.profileImg.image = profileImg
        self.emailLbl.text = email
        
        if isSelected {
            self.checkImg.isHidden = false
        } else {
            self.checkImg.isHidden = true
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
