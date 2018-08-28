//
//  HeaderView.swift
//  TabbarAppUICode
//
//  Created by Sreekanth Iragam Reddy on 9/15/17.
//  Copyright © 2017 Sreekanth Iragam Reddy. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    var addButton:UIButton = UIButton()
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    func setupView() {
        addButton.setTitle("Add Data", for: .normal)
        addButton.backgroundColor = UIColor.brown
       // addButton.sizeToFit()
        self.addAutoLayoutSubview(addButton)
        let layoutConstraints:[NSLayoutConstraint] = [
        addButton.heightAnchor.constraint(equalToConstant: 30),
        addButton.widthAnchor.constraint(equalToConstant: 150),
        addButton.centerYAnchor.constraint(equalTo:self.centerYAnchor),
        addButton.leadingAnchor.constraint(equalTo:leadingAnchor,constant:20),
        ]
        
        NSLayoutConstraint.activate(layoutConstraints)

        
    }
}
