//
//  ViewController.swift
//  testXIB
//
//  Created by Karim Arhan on 01/04/20.
//  Copyright © 2020 Phincon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
        //tableview.contentInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        if row == 0{
            tableView.register(FirstTableViewCell.nib(), forCellReuseIdentifier: "firstcellTV")
            let cell = tableView.dequeueReusableCell(withIdentifier: "firstcellTV", for: indexPath) as! FirstTableViewCell
            self.tableview.rowHeight = 85
            
            return  cell
        }else if row==1{
            tableView.register(SecondTableViewCell.nib(), forCellReuseIdentifier: "secondcellTV")
            let cell = tableView.dequeueReusableCell(withIdentifier: "secondcellTV", for: indexPath) as! SecondTableViewCell
           self.tableview.rowHeight = 232
            return cell
        }else if row==2{
            tableView.register(ThirdTableViewCell.nib(), forCellReuseIdentifier: "thirdcellTV")
            let cell = tableView.dequeueReusableCell(withIdentifier: "thirdcellTV", for: indexPath) as! ThirdTableViewCell
            self.tableview.rowHeight = 745
            return cell
        }else{
            tableView.register(FourthTableViewCell.nib(), forCellReuseIdentifier: "fourthcellTV")
            let cell = tableView.dequeueReusableCell(withIdentifier: "fourthcellTV", for: indexPath) as! FourthTableViewCell
            self.tableview.rowHeight = 140
            return cell
        }
    }
    
}
