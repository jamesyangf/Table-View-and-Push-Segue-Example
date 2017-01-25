//
//  SongTableViewCell.swift
//  Lab4
//
//  Created by James Yang on 1/24/17.
//  Copyright © 2017 James Yang. All rights reserved.
//

import UIKit

class SongTableViewCell: UITableViewCell {

    @IBOutlet weak var songTitle: UILabel!
    @IBOutlet weak var artistTitle: UILabel!
    @IBOutlet weak var albumTitle: UILabel!
    @IBOutlet weak var yearTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
