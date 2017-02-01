//
//  PostCell.swift
//  SocialNetwork
//
//  Created by Joseph Kim on 2/1/17.
//  Copyright © 2017 Joseph Kim. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    @IBOutlet weak var profileImg: CircleView!
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var likesLbl: UILabel!
    @IBOutlet weak var caption: UITextView!
}
