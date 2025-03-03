//
//  Extension.swift
//
//
//  Created by Soarov Chakra Borty on 2/27/25.
//
import Foundation
import UIKit
extension UIView {
    func roundTopCorners(_ radius: CGFloat = 10) {

        self.clipsToBounds = true
        self.layer.cornerRadius = radius
        if #available(iOS 11.0, *) {
            self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        } else {
            self.roundCorners(corners: [.topLeft, .topRight], radius: radius)
        }
    }

    func roundBottomCorners(_ radius: CGFloat = 10) {

        self.clipsToBounds = true
        self.layer.cornerRadius = radius
        if #available(iOS 11.0, *) {
            self.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        } else {
            self.roundCorners(corners: [.bottomLeft, .bottomRight], radius: radius)
        }
    }

    func roundBothCorner(_ radius: CGFloat = 10) {

        self.clipsToBounds = true
        self.layer.cornerRadius = radius
    }

    private func roundCorners(corners: UIRectCorner, radius: CGFloat) {

         let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         layer.mask = mask
     }
}
