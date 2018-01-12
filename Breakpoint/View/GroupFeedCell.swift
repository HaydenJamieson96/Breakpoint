//
//  GroupFeedCell.swift
//  Breakpoint
//
//  Created by Hayden Jamieson on 12/01/2018.
//  Copyright © 2018 Hayden Jamieson. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {

    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImg.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
        
    }
}
