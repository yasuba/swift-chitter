//
//  ParsedTweetCell.swift
//  Chitter
//
//  Created by Driver, Maya (UK - London) on 20/07/2015.
//  Copyright (c) 2015 Maya. All rights reserved.
//

import UIKit

class ParsedTweetCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var tweetTextLabel: UILabel!
    
    
    @IBOutlet weak var createAtLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
