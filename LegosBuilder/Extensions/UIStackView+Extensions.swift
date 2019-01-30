//
//  UIStackView+Extensions.swift
//  Lego
//
//  Created by Duarte Lopes on 02/07/2017.
//  Copyright © 2017 Duarte Lopes. All rights reserved.
//

import  UIKit

@available(iOS 9.0, *)
public extension UIStackView {
    
    func addArrangedSubviews(_ views: [UIView]) {
        
        for view in views {
            
            self.addArrangedSubview(view)
        }
    }
    
    func removeArrangedSubviews(_ views: [UIView]) {
        
        for view in views {
            
            self.removeArrangedSubview(view)
        }
    }
    
    func removeAllArrangedSubviews() {
        
        for view in arrangedSubviews {
            
            self.removeArrangedSubview(view)
        }
    }
}
