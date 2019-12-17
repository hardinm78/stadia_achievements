//
//  AchievementCellTableViewCell.swift
//  stadia_achievements
//
//  Created by Michael Hardin on 12/16/19.
//  Copyright © 2019 Michael Hardin. All rights reserved.
//

import UIKit

class AchievementCellTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var mikeImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
