//
//  Extension.swift
//  ShopPage
//
//  Created by phincon on 24/03/20.
//  Copyright © 2020 phincon. All rights reserved.
//

import UIKit
import WebKit
import UIKit.UITextField

extension UIView {
    
    static func nibName() -> String {
        let nameSpaceClassName = NSStringFromClass(self)
        let className = nameSpaceClassName.components(separatedBy: ".").last! as String
        return className
    }

    static func nib() -> UINib {
        return UINib(nibName: self.nibName(), bundle: nil)
    }
    
}
