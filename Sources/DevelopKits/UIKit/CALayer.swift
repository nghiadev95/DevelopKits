//
//  CALayer.swift
//
//
//  Created by Tien Nguyen on 5/27/20.
//

#if canImport(UIKit)
import UIKit

public extension CALayer {
    func applySketchShadow(color: UIColor = .black, alpha: Float = 0.5, xValue: CGFloat = 0, yValue: CGFloat = 2, blur: CGFloat = 4, spread: CGFloat = 0) {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: xValue, height: yValue)
        shadowRadius = blur / 2.0
        shadowPath = UIBezierPath(rect: bounds).cgPath

        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }

    func removeSketchShadow() {
        shadowColor = nil
        shadowOpacity = 0
        shadowOffset = CGSize(width: 0, height: 0)
        shadowRadius = 0
        shadowPath = nil
    }
}
#endif
