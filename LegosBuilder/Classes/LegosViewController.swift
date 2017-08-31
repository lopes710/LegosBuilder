//
//  LegosViewController.swift
//  Lego
//
//  Created by Duarte Lopes on 30/06/2017.
//  Copyright © 2017 Duarte Lopes. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
class LegosViewController: UIViewController {
    
    // MARK: Properties
    
    fileprivate let scrollView: UIScrollView = {
    
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    fileprivate let stackView: UIStackView = {
        
        let stackView = UIStackView()
        // TODO: make this properties editable?
        stackView.axis                                      = .vertical
        stackView.distribution                              = .fill
        stackView.alignment                                 = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: Lifecycle
    
    init() {

        super.init(nibName: nil, bundle: nil)
        self.defineSubviews()
        self.defineSubviewsConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.defineSubviews()
        self.defineSubviewsConstraints()
    }
    
    override func loadView() {
        super.loadView()
        
        self.view = self.scrollView
    }
}

// MARK: Private methods

@available(iOS 9.0, *)
fileprivate extension LegosViewController {
    
    func defineSubviews() {
        
        self.scrollView.addSubview(self.stackView)
    }
    
    func defineSubviewsConstraints() {
        
        self.stackView.pinToBounds(of: self.scrollView)
        NSLayoutConstraint.activate([
            self.stackView.widthAnchor.constraint(equalTo: self.scrollView.widthAnchor)
            ])
    }
}

// MARK: Public methods

@available(iOS 9.0, *)
extension LegosViewController {
    
    // TODO: Later create and change to type ComponentView (or ModuleView, or LegoView?) (Also LegoView, same as Component can be a protocol)
    func insertLegosViews(_ legosViews: [UIView]) {
        
        self.stackView.addArrangedSubviews(legosViews)
    }
    
    func insertLegoView(_ legoView: UIView) {
        
        self.stackView.addArrangedSubview(legoView)
    }
    
    func insertLegoView(_ legoView: UIView, atIndex index: Int) {
        
        self.stackView.insertArrangedSubview(legoView, at: index)
    }
}
