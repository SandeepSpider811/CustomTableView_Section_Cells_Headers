//
//  TableViewCell1.swift
//  CustomTableViewCells
//
//  Created by Sierra 4 on 27/02/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell {

    @IBOutlet var imageViewOutlet: UIImageView!
    
    @IBOutlet var lblOutlet: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
