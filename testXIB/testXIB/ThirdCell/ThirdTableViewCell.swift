//
//  ThirdTableViewCell.swift
//  testXIB
//
//  Created by Karim Arhan on 01/04/20.
//  Copyright © 2020 Phincon. All rights reserved.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionview: UICollectionView!
    @IBOutlet weak var collectionview2: UICollectionView!
    @IBOutlet weak var tableview: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionview.register(LogoCollectionViewCell.nib(), forCellWithReuseIdentifier: "logoCV")
        collectionview.delegate = self
        collectionview.dataSource = self
        
        collectionview2.register(PaketCollectionViewCell.nib(), forCellWithReuseIdentifier: "paketCV")
        collectionview2.delegate = self
        collectionview2.dataSource = self
        
        tableview.delegate = self
        tableview.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    var logo = ["globe","phone","airplane", "star"]
    
    var cat = ["Internet", "Telepon", "Roaming", "Mutlimedia"]
    
    var label0 = ["Combo Internet OMG!", "Internet OMG!", "Kouta Keluarga", "Kouta Keluarga"]
    
    var label1 = ["27 GB", "14 GB", "45 GB", "90 GB"]
    
    var label2 = ["30 Hari", "30 Hari", "30 Hari", "30 Hari"]
    
    var label3 = ["Rp 179.000", "Rp 115.000", "Rp 250.000", "Rp 400.000"]
    
    var pic = ["1", "1", "2", "2"]
    
    @objc func  buttonAction() {
        print("ok")
    }
    
}

extension ThirdTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionview2{
            return 5
        }
        return logo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionview2{
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "paketCV", for: indexPath) as! PaketCollectionViewCell
            
            cell2.button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
            
            return cell2
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "logoCV", for: indexPath) as! LogoCollectionViewCell
        
        cell.logo.image = UIImage(systemName: logo[indexPath.row])
        cell.label.text = cat[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == collectionview2{
            return CGSize(width: 111, height: 30)
        }
        return CGSize(width: (UIScreen.main.bounds.width/4)-10, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        if let vc = storyboard.instantiateViewController(identifier: "detail") as? DetailViewController{
           
            self.collectionview2.window?.rootViewController = vc
            self.collectionview2.window?.makeKeyAndVisible()
        }
    }
    
}

extension ThirdTableViewCell: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return label0.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(PromoTableViewCell.nib(), forCellReuseIdentifier: "promoTV")
        let cellt = tableView.dequeueReusableCell(withIdentifier: "promoTV", for: indexPath) as! PromoTableViewCell
        
        cellt.label0.text = label0[indexPath.row]
        cellt.label1.text = label1[indexPath.row]
        cellt.label2.text = label2[indexPath.row]
        cellt.label3.text = label3[indexPath.row]
        cellt.img0.image = UIImage(named: pic[indexPath.row])
        
        if indexPath.row == 0{
            cellt.view1.isHidden = false
            cellt.label4.isHidden = false
            let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: cellt.label4.text!)
            attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))

            cellt.label4.attributedText = attributeString
        }else{
            cellt.view1.isHidden = true
            cellt.label4.isHidden = true
        }
        
        return cellt
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
}
