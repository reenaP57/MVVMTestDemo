//
//  SourceTblCell.swift
//  MVVMDemo3
//
//  Created by mac-0003 on 25/12/18.
//  Copyright © 2018 mac-0003. All rights reserved.
//

import UIKit

class SourceTblCell: UITableViewCell {
    @IBOutlet weak var lblHeading: UILabel!
    @IBOutlet weak var lblDescription: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
