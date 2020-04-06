//
//  PromoTableViewCell.swift
//  testXIB
//
//  Created by Karim Arhan on 03/04/20.
//  Copyright © 2020 Phincon. All rights reserved.
//

import UIKit

class PromoTableViewCell: UITableViewCell {

    @IBOutlet weak var label0: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var view0: UIView!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var img0: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let c1greyColor = UIColor(red: 0.075, green: 0.278, blue: 0.396, alpha: 0.1)
        
        view0.layer.borderColor = UIColor.lightGray.cgColor
        view0.layer.borderWidth = 0.5
        view0.layer.cornerRadius = 4
        view0.layer.shadowColor = c1greyColor.cgColor
        view0.layer.shadowRadius = 3
        view0.layer.shadowOpacity = 1
        view0.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        view1.layer.cornerRadius = 4
        view1.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMinYCorner]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
