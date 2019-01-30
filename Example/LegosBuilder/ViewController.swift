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
    
    private let legosView = ScrollableLegosView()

    private let titleComponent: TitleModule = {

        let titleComponent = TitleModule()
        titleComponent.translatesAutoresizingMaskIntoConstraints = false
        return titleComponent
    }()
    
    private let emptyComponent: EmptyModule = {
        
        let emptyComponent = EmptyModule()
        emptyComponent.translatesAutoresizingMaskIntoConstraints = false
        return emptyComponent
    }()
    
    private let legoCollectionView = LegosCollectionView(frame: .zero,
                                                         collectionViewLayout: UICollectionViewFlowLayout())
    
    private let legosTableView = LegosTableView(frame: .zero)
    
    override func loadView() {
        
        self.view = self.legosView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.legoCollectionView.delegate = self
        self.legoCollectionView.dataSource = self
        
        self.legosTableView.delegate = self
        self.legosTableView.dataSource = self
        
        self.registerCells()
        
        let x = SpacingView(spacing: 50.0, backgroundColor: .purple)

        self.legosView.insertLegosViews([
            self.emptyComponent,
            x,
            self.titleComponent,
            self.legosTableView,
            300,
            self.legoCollectionView,
            x.clone
            ])

        self.titleComponent.render(with: TitleModule.Configuration(title: "Title Component"))
    }
    
    func registerCells() {
        
        let cellNib = UINib(nibName: String(describing: BlueCollectionViewCell.self),
                            bundle: Bundle.main)
        self.legoCollectionView.register(cellNib, forCellWithReuseIdentifier: BlueCollectionViewCell.reuseIdentifier)
        
        let cellTableView = UINib(nibName: String(describing: RedTableViewCell.self), bundle: Bundle.main)
        self.legosTableView.register(cellTableView, forCellReuseIdentifier: RedTableViewCell.reuseIdentifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: RedTableViewCell.reuseIdentifier,
                                                    for: indexPath) as? RedTableViewCell {
        
            cell.titleLabel.text = "XPTO"
            
            return cell
        }
        
        return UITableViewCell()
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BlueCollectionViewCell.reuseIdentifier,
                                                         for: indexPath) as? BlueCollectionViewCell {
            
            return cell
        }
        
        return UICollectionViewCell()
    }
}
