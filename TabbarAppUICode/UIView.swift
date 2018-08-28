//
//  UIView.swift
//  TabbarAppUICode
//
//  Created by Sreekanth Iragam Reddy on 9/15/17.
//  Copyright © 2017 Sreekanth Iragam Reddy. All rights reserved.
//

import Foundation
import UIKit

struct Edge : OptionSet {
    let rawValue: Int
    init(rawValue: Int) { self.rawValue = rawValue }
    static let Top = Edge(rawValue: 1)
    static let Leading = Edge(rawValue: 2)
    static let Bottom = Edge(rawValue: 4)
    static let Trailing = Edge(rawValue: 8)
    static let TopBottom: Edge = [Top, Bottom]
    static let LeadingTrailing: Edge = [Leading, Trailing]
    static let All: Edge = [TopBottom, LeadingTrailing]
}

extension UIView {
    
    func addAutoLayoutSubview(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }
    
    @discardableResult
    func constrainToSuperview(edges: Edge = [.All] , insets: UIEdgeInsets = UIEdgeInsets.zero, relativeToMargins: Bool = false, shouldActivate: Bool = true) -> [NSLayoutConstraint] {
        guard let superview = superview else {
            assertionFailure("View must have a superview before constraining to its superview.")
            return []
        }
        
        let relativeTarget: AnyObject
        if relativeToMargins {
            relativeTarget = superview.layoutMarginsGuide
        } else {
            relativeTarget = superview
        }
        
        var constraints: [NSLayoutConstraint] = []
        
        
        if edges.contains(.Top) {
            constraints.append(topAnchor.constraint(equalTo: relativeTarget.topAnchor, constant: insets.top))
        }
        
        if edges.contains(.Leading) {
            constraints.append(leadingAnchor.constraint(equalTo: relativeTarget.leadingAnchor, constant: insets.left))
        }
        
        if edges.contains(.Bottom) {
            constraints.append(bottomAnchor.constraint(equalTo: relativeTarget.bottomAnchor, constant: -insets.bottom))
        }
        
        if edges.contains(.Trailing) {
            constraints.append(trailingAnchor.constraint(equalTo: relativeTarget.trailingAnchor, constant: -insets.right))
        }
        
        if shouldActivate {
            NSLayoutConstraint.activate(constraints)
        }
        
        return constraints
    }
}


