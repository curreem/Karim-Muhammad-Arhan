//
//  DetailViewController.swift
//  testXIB
//
//  Created by Karim Arhan on 05/04/20.
//  Copyright © 2020 Phincon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        let back = storyboard?.instantiateViewController(identifier: "home") as! ViewController
        self.view.window?.rootViewController = back
        self.view.window?.makeKeyAndVisible()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
