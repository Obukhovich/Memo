//
//  addSubview.swift
//  memo
//
//  Created by Arthur Obukhovich on 1/15/18.
//  Copyright © 2018 Artsiom Sadyryn. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addSubview(_ view: UIView, margins: UIEdgeInsets = UIEdgeInsets.zero) {
        
        self.addSubview(view)
        view.topAnchor.constraint(equalTo: self.topAnchor, constant: margins.top).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: margins.bottom).isActive = true
        view.rightAnchor.constraint(equalTo: self.rightAnchor, constant: margins.right).isActive = true
        view.leftAnchor.constraint(equalTo: self.leftAnchor, constant: margins.left).isActive = true
    }
}
