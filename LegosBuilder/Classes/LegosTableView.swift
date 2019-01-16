//
//  LegosTableView.swift
//  LegosBuilder_Example
//
//  Created by Duarte Lopes on 28/11/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

open class LegosTableView: UITableView {
    
    override public init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)
        setupView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        
        self.rowHeight = 44.0
        self.isScrollEnabled = false
    }
    
    override open var intrinsicContentSize: CGSize {

        return self.contentSize
    }
}
