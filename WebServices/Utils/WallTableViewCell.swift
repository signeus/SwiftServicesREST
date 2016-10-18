//
//  WallTableViewCell.swift
//  WebServices
//
//  Created by Kevin on 18/10/16.
//  Copyright © 2016 Kevin. All rights reserved.
//

import UIKit

class WallTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var body: UILabel!
    @IBOutlet weak var id: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
