//
//  AppCoordinator.swift
//  TabbarAppUICode
//
//  Created by Sreekanth Iragam Reddy on 9/15/17.
//  Copyright © 2017 Sreekanth Iragam Reddy. All rights reserved.
//

import Foundation
import UIKit
class AppCoordinator {
    
    static func setupInitial(window:UIWindow) {
        let tabbarController = MyUITabbarController()
        window.rootViewController = tabbarController
    }
}
