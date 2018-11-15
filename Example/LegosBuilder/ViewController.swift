//
//  ViewController.swift
//  LegosBuilder
//
//  Created by lopes710 on 07/24/2017.
//  Copyright (c) 2017 lopes710. All rights reserved.
//

import UIKit
import LegosBuilder

class ViewController: UIViewController {
    
    private let legosView = LegosView()

    private let titleComponent: TitleComponent = {

        let titleComponent = TitleComponent()
        titleComponent.translatesAutoresizingMaskIntoConstraints = false
        return titleComponent
    }()
    
    private let emptyComponent: EmptyComponent = {
        
        let emptyComponent = EmptyComponent()
        emptyComponent.translatesAutoresizingMaskIntoConstraints = false
        return emptyComponent
    }()
    
    private let tableView = TableView()
    
    override func loadView() {
        
        self.view = self.legosView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.legosView.insertLegosViews([
            self.emptyComponent,
            self.titleComponent
            ])

        self.titleComponent.render(with: TitleComponent.Configuration(title: "Title Component"))
    }
}
