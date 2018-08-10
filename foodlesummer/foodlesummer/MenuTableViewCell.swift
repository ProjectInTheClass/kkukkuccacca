//
//  MenuTableViewCell.swift
//  foodlesummer
//
//  Created by 방문사용자 on 2018. 8. 2..
//  Copyright © 2018년 김태현. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    @IBOutlet weak var menuname: UILabel!
    @IBOutlet weak var coolprice: UILabel!
    @IBOutlet weak var hotprice: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    


}
