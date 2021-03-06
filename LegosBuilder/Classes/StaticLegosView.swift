//
//  StaticLegosView.swift
//  LegosBuilder
//
//  Created by Duarte Lopes on 08/08/2018.
//

import UIKit

@available(iOS 9.0, *)
open class StaticLegosView: UIView, StackableLegoViews {
    
    public let stackView: UIStackView = {
        
        let stackView = UIStackView()
        // TODO: make this properties editable?
        stackView.axis                                      = .vertical
        stackView.distribution                              = .fill
        stackView.alignment                                 = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    public init() {
        super.init(frame: .zero)
        
        self.defineSubviews()
        self.defineSubviewsConstraints()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.defineSubviews()
        self.defineSubviewsConstraints()
    }
}

// MARK: Private

@available(iOS 9.0, *)
private extension StaticLegosView {
    
    func defineSubviews() {

        self.addSubview(self.stackView)
        self.backgroundColor = .white
    }
    
    func defineSubviewsConstraints() {
        
        self.stackView.pinToBounds(of: self)
        NSLayoutConstraint.activate([
            self.stackView.widthAnchor.constraint(equalTo: self.widthAnchor)
        ])
    }
}
