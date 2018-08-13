//
//  ReviewTableViewCell.swift
//  foodlesummer
//
//  Created by 방문사용자 on 2018. 8. 10..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

class ReviewTableViewCell: UITableViewCell {

    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var reviewdateLabel: UILabel!
    
    @IBOutlet weak var cafenameLabel: UILabel!
    
    @IBOutlet weak var rateLabel: UILabel!
    
    @IBOutlet weak var reviewLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
