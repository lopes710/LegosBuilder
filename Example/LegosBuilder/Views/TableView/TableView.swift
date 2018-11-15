//
//  TableView.swift
//  Lego
//
//  Created by Duarte Lopes on 03/07/2017.
//  Copyright © 2017 Duarte Lopes. All rights reserved.
//

import UIKit

class TableView: UIView {
    
    @IBOutlet weak var tableView: UITableView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    // Performs the initial setup.
    private func setupView() {
        
        self.registerSameNameXib()
        
        let cellNib = UINib(nibName: String(describing: RedTableViewCell.self), bundle: Bundle.main)
        self.tableView.register(cellNib, forCellReuseIdentifier: "cell")
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override var intrinsicContentSize: CGSize {
        
        return self.tableView.contentSize
    }
}

extension TableView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? RedTableViewCell {
            
            cell.titleLabel.text = "XPTO"
          
            return cell
        }
        
        return UITableViewCell()
    }
}
