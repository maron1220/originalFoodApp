//
//  explainTableViewCell.swift
//  tableanswer
//
//  Created by 細川聖矢 on 2019/06/18.
//  Copyright © 2019 Seiya. All rights reserved.
//

import UIKit

class explainTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
}
