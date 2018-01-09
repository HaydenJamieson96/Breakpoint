//
//  FeedCell.swift
//  Breakpoint
//
//  Created by Hayden Jamieson on 09/01/2018.
//  Copyright © 2018 Hayden Jamieson. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

   
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email:String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
    
}
