//
//  TextTableViewCell.swift
//  WWDC 2015 - Txai Wieser
//
//  Created by Txai Wieser on 20/04/15.
//  Copyright (c) 2015 Txai Wieser. All rights reserved.
//

import UIKit

class TextTableViewCell: UITableViewCell {

    @IBOutlet weak var textView: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
