//
//  Component.swift
//  LegosBuilder_Example
//
//  Created by Duarte Lopes on 08/08/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

protocol Component: class {
    
    associatedtype Configuration
    
    func render(with configuration: Configuration)
}
