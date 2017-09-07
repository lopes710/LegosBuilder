//
//  ViewController.swift
//  LegosBuilder
//
//  Created by lopes710 on 07/24/2017.
//  Copyright (c) 2017 lopes710. All rights reserved.
//

import UIKit
import LegosBuilder

class ViewController: LegosViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.insertLegoView(TableView())
    }
}
