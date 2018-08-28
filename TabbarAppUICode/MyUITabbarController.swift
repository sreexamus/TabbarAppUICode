//
//  MyUITabbarControllerViewController.swift
//  TabbarAppUICode
//
//  Created by Sreekanth Iragam Reddy on 9/15/17.
//  Copyright © 2017 Sreekanth Iragam Reddy. All rights reserved.
//

import UIKit

class MyUITabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    func setupViews() {
        
        let myaccount = MyAccountViewController()
        myaccount.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 0)
        
        let relatives = RelativesViewController()
        relatives.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        relatives.tabBarItem.badgeValue = "3"
        
        let sports = SportsViewController()
        sports.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 3)
        
        let viewcontrollersList = [myaccount,relatives,sports]
        let navViewcontrollers = viewcontrollersList.map {
          UINavigationController(rootViewController: $0)
        }
        
        viewControllers = navViewcontrollers
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension MyUITabbarController:UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("the viewcontroller selected is  \(item.badgeValue)")
        
    }
}

extension MyUITabbarController:UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
             print("the view controller to be shown is \(viewController)")
    }
}

