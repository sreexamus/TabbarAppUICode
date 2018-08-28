//
//  MyAccountViewController.swift
//  TabbarAppUICode
//
//  Created by Sreekanth Iragam Reddy on 9/15/17.
//  Copyright © 2017 Sreekanth Iragam Reddy. All rights reserved.
//

import UIKit

class MyAccountViewController: UIViewController {
    var headerView:HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = UIColor.red
        headerView = HeaderView()
        headerView.addButton.addTarget(self, action: #selector(addMoreItems), for: .touchUpInside)
        view.addAutoLayoutSubview(headerView)
        headerView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
        headerView.constrainToSuperview(edges: [.LeadingTrailing], insets: UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0))
        headerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        headerView.backgroundColor = UIColor.blue

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addMoreItems() {
        print("add button hit done")
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
