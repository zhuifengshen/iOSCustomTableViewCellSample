//
//  CustomCell.swift
//  CustomTableViewCellSample
//
//  Created by 张楚昭 on 16/5/21.
//  Copyright © 2016年 tianxing. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
