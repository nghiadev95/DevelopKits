//
//  UIViewController.swift
//
//
//  Created by Nguyen Nghia on 8/30/20.
//

#if canImport(UIKit)
import UIKit

// Source: https://gist.githubusercontent.com/Shubham0812/a5ea5229b6e57eacd002f6d128d5cf09/raw/d486ea29b0e2dd89307a5b731664714edc33e5b4/UIViewController.swift
extension UIViewController {
    func showToast(message: String, font: UIFont,
                   toastColor: UIColor = UIColor.white,
                   toastBackground: UIColor = UIColor.black)
    {
        let toastLabel = UILabel()
        toastLabel.textColor = toastColor
        toastLabel.font = font
        toastLabel.textAlignment = .center
        toastLabel.text = message
        toastLabel.alpha = 0.0
        toastLabel.layer.cornerRadius = 6
        toastLabel.backgroundColor = toastBackground

        toastLabel.clipsToBounds = true

        let toastWidth: CGFloat = toastLabel.intrinsicContentSize.width + 16
        let toastHeight: CGFloat = 32

        toastLabel.frame = CGRect(x: self.view.frame.width / 2 - (toastWidth / 2),
                                  y: self.view.frame.height - (toastHeight * 3),
                                  width: toastWidth, height: toastHeight)

        self.view.addSubview(toastLabel)

        UIView.animate(withDuration: 1.5, delay: 0.25, options: .autoreverse, animations: {
            toastLabel.alpha = 1.0
        }) { _ in
            toastLabel.removeFromSuperview()
        }
    }
}

#endif
