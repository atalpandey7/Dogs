//
//  DogCellTableViewCell.swift
//  Dogs
//
//  Created by Sudhir Shrestha on 16/1/18.
//  Copyright © 2018 Robert Shrestha. All rights reserved.
//

import UIKit

class DogCellTableViewCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var dogNameLblTxt: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
