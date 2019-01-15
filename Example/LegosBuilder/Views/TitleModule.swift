//
//  TitleModule.swift
//  LegosBuilder_Example
//
//  Created by Duarte Lopes on 08/08/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import LegosBuilder

final class TitleModule: StaticLegosView {

    private let titleLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emptyComponent: EmptyModule = {
        
        let emptyComponent = EmptyModule()
        emptyComponent.translatesAutoresizingMaskIntoConstraints = false
        return emptyComponent
    }()
    
    override init() {

        super.init()

        self.defineSubviews()
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {

        super.init(coder: aDecoder)
    }
    
    private func defineSubviews() {
        
        self.backgroundColor = .blue
        
        self.insertLegoView(self.titleLabel)
        self.insertLegoView(self.emptyComponent)
    }
}

// MARK: Component

extension TitleModule {
    
    struct Configuration {

        let title: String
    }
    
    func render(with configuration: Configuration) {
        
        self.titleLabel.text = configuration.title
        self.emptyComponent.changeBackgroundColor(.red)
    }
}
