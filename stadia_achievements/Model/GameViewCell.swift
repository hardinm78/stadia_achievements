//
//  GameViewCell.swift
//  stadia_achievements
//
//  Created by Michael Hardin on 12/17/19.
//  Copyright © 2019 Michael Hardin. All rights reserved.
//

import UIKit

class GameViewCell: UITableViewCell {   
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var pView: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}




