//
//  SpacingView.swift
//  LegosBuilder
//
//  Created by Duarte Lopes on 15/01/2019.
//

@available(iOS 9.0, *)
open class SpacingView: UIView {
    
    public var clone: UIView {
            
        return self.copy() as! UIView
    }
    
    private let spacing: CGFloat
    private let backgroundImage: UIImage?
    
    public init(spacing: CGFloat = 0.0,
                backgroundColor: UIColor = .clear,
                backgroundImage: UIImage? = nil) {
        
        self.spacing = spacing
        self.backgroundImage = backgroundImage
        
        super.init(frame: .zero)
        
        self.backgroundColor = backgroundColor
        
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: spacing)
            ])
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@available(iOS 9.0, *)
extension SpacingView: NSCopying {

    public func copy(with zone: NSZone? = nil) -> Any {
        
        let backgroundColor = self.backgroundColor ?? .clear
        
        let copy = SpacingView(spacing: self.spacing,
                               backgroundColor: backgroundColor,
                               backgroundImage: self.backgroundImage)
        return copy
    }
}
