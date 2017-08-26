//
//  ShadowView.swift
//  Breakpoint
//
//  Created by Marcus Ng on 8/26/17.
//  Copyright © 2017 Marcus Ng. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }
    
}
