//
//  TopPostTableViewCell.swift
//  iOSEindprojectVistival
//
//  Created by Dajian on 30/01/18.
//  Copyright © 2018 ehb. All rights reserved.
//

import UIKit

class TopPostTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ivTopPost: UIImageView!
    @IBOutlet weak var lbTitleTopPost: UILabel!
    @IBOutlet weak var lbDateTopPost: UILabel!
    @IBOutlet weak var lbAuthor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
