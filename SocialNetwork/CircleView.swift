//
//  CircleView.swift
//  SocialNetwork
//
//  Created by Joseph Kim on 2/1/17.
//  Copyright © 2017 Joseph Kim. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
    
    override func layoutSubviews() {
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }
}
