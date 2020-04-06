//
//  FirstTableViewCell.swift
//  testXIB
//
//  Created by Karim Arhan on 01/04/20.
//  Copyright © 2020 Phincon. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionview: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionview.register(FirstCollectionViewCell.nib(), forCellWithReuseIdentifier: "firstcellCV")
        collectionview.delegate = self
        collectionview.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var label0 = ["Rp 10.000.000", "Kirim Hadiah"]
    var label1 = ["Pulsa Anda", "Pulsa dan Paket"]
    var button = ["Isi", "Kirim"]
    
}

extension FirstTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return label0.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstcellCV", for: indexPath) as! FirstCollectionViewCell
        cell.label0.text = label0[indexPath.row]
        cell.label1.text = label1[indexPath.row]
        cell.button0.setTitle(button[indexPath.row], for: .normal)
        if indexPath.row == 0{
            cell.view.layer.maskedCorners = [.layerMinXMinYCorner,.layerMinXMaxYCorner]
        } else{
            cell.view.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMaxXMinYCorner]
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (UIScreen.main.bounds.width/2)-15, height: 70)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
