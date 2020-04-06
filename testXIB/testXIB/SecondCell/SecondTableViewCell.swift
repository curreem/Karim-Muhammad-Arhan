//
//  SecondTableViewCell.swift
//  testXIB
//
//  Created by Karim Arhan on 01/04/20.
//  Copyright © 2020 Phincon. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pagecontrol: UIPageControl!
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionview.register(SpecialCollectionViewCell.nib(), forCellWithReuseIdentifier: "specialCV")
        collectionview.delegate = self
        collectionview.dataSource = self
        pagecontrol.numberOfPages = judul.count
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var judul = ["Combo Extra Internet OMG!","Internet OMG!", "Kuota Keluarga", "Kuota Keluarga"]
    
    var gb = ["50 GB", "12 GB", "45 GB", "90 GB"]
    
    var harga = ["Rp 150.000", "Rp 50.000", "Rp 250.000", "Rp 400.000"]
    
    var day = ["30 Hari", "30 Hari", "30 Hari", "30 Hari"]
    
    var pic = ["1", "1", "1", "1"]
    
    var currentpage = 0
    
}

extension SecondTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return judul.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "specialCV", for: indexPath) as! SpecialCollectionViewCell
        
        cell.label0.text = judul[indexPath.row]
        cell.label1.text = gb[indexPath.row]
        cell.label2.text = day[indexPath.row]
        cell.label3.text = harga[indexPath.row]
        cell.img0.image = UIImage(named: pic[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 342, height: 144)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        currentpage = Int(scrollView.contentOffset.x / 300)
        pagecontrol.currentPage = currentpage
    }
    
}
