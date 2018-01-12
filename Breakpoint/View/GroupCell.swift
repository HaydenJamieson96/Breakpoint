//
//  GroupCell.swift
//  Breakpoint
//
//  Created by Hayden Jamieson on 12/01/2018.
//  Copyright © 2018 Hayden Jamieson. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupDescriptionLbl: UILabel!
    @IBOutlet weak var groupMembersLbl: UILabel!
    
    func configureCell(title: String, description: String, memberCount: Int) {
        self.groupTitleLbl.text = title
        self.groupDescriptionLbl.text = description
        self.groupMembersLbl.text = "\(memberCount) members."
    }
    
    
}
