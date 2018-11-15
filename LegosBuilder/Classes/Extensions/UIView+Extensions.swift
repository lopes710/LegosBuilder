//
//  UIView+Extensions.swift
//  Lego
//
//  Created by Duarte Lopes on 03/07/2017.
//  Copyright © 2017 Duarte Lopes. All rights reserved.
//

import UIKit

public extension UIView {
    
    @available(iOS 9.0, *)
    public func pinToBounds(of view: UIView,
                            topConstant: CGFloat = 0,
                            leadingConstant: CGFloat = 0,
                            bottomConstant: CGFloat = 0,
                            trailingConstant: CGFloat = 0) {
        
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: topConstant),
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leadingConstant),
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottomConstant),
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: trailingConstant)
            ])
    }
    
    // Loads a XIB file into a view.
    public func registerSameNameXib() {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        view.frame = self.bounds
        self.addSubview(view)
    }
}
