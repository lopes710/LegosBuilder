//
//  StackableLegoViews.swift
//  LegosBuilder
//
//  Created by Duarte Lopes on 30/01/2019.
//

@available(iOS 9.0, *)
public protocol StackableLegoViews {
    
    var stackView: UIStackView { get }
    
    func insertLegosViews(_ legosViews: [Any])
    func insertLegoView(_ legoView: Any)
    func insertLegoView(_ legoView: UIView, atIndex index: Int)
}

@available(iOS 9.0, *)
public extension StackableLegoViews {
    
    func filteredLegosViews(legoView: Any) -> UIView? {
        
        switch legoView {
            
        case let legoView as UIView:
            
            return legoView
            
        case let space as Double:
            
            return SpacingView(spacing: CGFloat(space))
            
        case let space as Int:
            
            return SpacingView(spacing: CGFloat(space))
            
        default: return nil
        }
    }
    
    func insertLegosViews(_ legosViews: [Any])  {
        
        let filteredLegosViews: [UIView] = legosViews.flatMap { legoView in
            
            return self.filteredLegosViews(legoView: legoView)
        }
        
        self.stackView.addArrangedSubviews(filteredLegosViews)
    }
    
    func insertLegoView(_ legoView: Any) {
        
        if let legoView = self.filteredLegosViews(legoView: legoView) {
            
            self.stackView.addArrangedSubview(legoView)
        }
    }
    
    func insertLegoView(_ legoView: UIView, atIndex index: Int) {
        
        if let legoView = self.filteredLegosViews(legoView: legoView) {
            
            self.stackView.insertArrangedSubview(legoView, at: index)
        }
    }
}
