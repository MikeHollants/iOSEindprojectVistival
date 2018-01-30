//
//  PostTableViewCell.swift
//  iOSEindprojectVistival
//
//  Created by Dajian on 30/01/18.
//  Copyright © 2018 ehb. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ivPost: UIImageView!
    @IBOutlet weak var lbTitlePost: UILabel!
    @IBOutlet weak var lbDatePost: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
