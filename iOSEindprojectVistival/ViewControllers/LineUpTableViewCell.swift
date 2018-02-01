//
//  LineUpTableViewCell.swift
//  iOSEindprojectVistival
//
//  Created by Michael Hollants on 01/02/2018.
//  Copyright © 2018 ehb. All rights reserved.
//

import UIKit

class LineUpTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lbShowTime: UILabel!
    @IBOutlet weak var lbBandName: UILabel!
    @IBOutlet weak var ivLogo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
