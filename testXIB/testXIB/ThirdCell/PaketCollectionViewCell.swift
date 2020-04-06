//
//  PaketCollectionViewCell.swift
//  testXIB
//
//  Created by Karim Arhan on 01/04/20.
//  Copyright © 2020 Phincon. All rights reserved.
//

import UIKit

class PaketCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var button: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 4
    }

}
