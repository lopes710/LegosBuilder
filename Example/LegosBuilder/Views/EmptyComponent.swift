//
//  EmptyComponent.swift
//  LegosBuilder_Example
//
//  Created by Duarte Lopes on 13/11/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

final class EmptyComponent: UIView {
    
    init() {
        super.init(frame: .zero)
        
        self.backgroundColor = .green
        
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 100.0)
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func changeBackgroundColor(_ color: UIColor) {
        
        self.backgroundColor = color
    }
}
