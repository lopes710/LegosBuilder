//
//  TitleComponent.swift
//  LegosBuilder_Example
//
//  Created by Duarte Lopes on 08/08/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import LegosBuilder

final class TitleComponent: LegosView2, Component {

    private let titleLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emptyComponent: EmptyComponent = {
        
        let emptyComponent = EmptyComponent()
        emptyComponent.translatesAutoresizingMaskIntoConstraints = false
        return emptyComponent
    }()
    
    private let tableView: TableView = {
        
        let tableView = TableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
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
        self.insertLegoView(self.tableView)
    }
}

// MARK: Component

extension TitleComponent {
    
    struct Configuration {

        let title: String
    }
    
    func render(with configuration: Configuration) {
        
        self.titleLabel.text = configuration.title
        self.emptyComponent.changeBackgroundColor(.red)
    }
}
