//
//  FirstCollectionViewCell.swift
//  testXIB
//
//  Created by Karim Arhan on 01/04/20.
//  Copyright © 2020 Phincon. All rights reserved.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label0: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let c1greyColor = UIColor(red: 0.075, green: 0.278, blue: 0.396, alpha: 0.1)
        
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 0.5
        view.layer.cornerRadius = 4
        view.layer.shadowColor = c1greyColor.cgColor
        view.layer.shadowRadius = 3
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: 0, height: 4)
        
        button0.layer.borderColor = UIColor.black.cgColor
        button0.layer.borderWidth = 1
        button0.layer.cornerRadius = 4
    }

}
