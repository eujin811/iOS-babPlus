//
//  BranchDetailViewController.swift
//  babPlus
//
//  Created by YoujinMac on 2020/02/03.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import UIKit

class BranchDetailViewController: UIViewController {
    
    private let backButtonItem = UINavigationItem()

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tabBarItem.
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "lessthan"), style: .plain, target: self, action: #selector(didTapBackButtonItem(_:)))
    }
    
    private func setupUI() {
        
    }
    private func attribute() {
        
    }
    
    @objc private func didTapBackButtonItem(_ sender : Any) {
        dismiss(animated: true)
    }

}
