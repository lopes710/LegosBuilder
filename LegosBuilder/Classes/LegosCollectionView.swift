//
//  LegosCollectionView.swift
//  LegosBuilder_Example
//
//  Created by Duarte Lopes on 20/11/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

//@available(iOS 9.0, *)
open class LegosCollectionView: UICollectionView {
    
    override public init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.setupView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupView()
    }
    
    func setupView() {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.isScrollEnabled = false
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        
        if bounds.size != self.intrinsicContentSize {
            invalidateIntrinsicContentSize()
        }
    }
    
    override open var intrinsicContentSize: CGSize {
        
        return self.collectionViewLayout.collectionViewContentSize
    }
}
