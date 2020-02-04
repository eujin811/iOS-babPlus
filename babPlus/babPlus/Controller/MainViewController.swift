//
//  ViewController.swift
//  babPlus
//
//  Created by YoujinMac on 2020/02/03.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    let flowLayout = UICollectionViewFlowLayout()
    lazy var collectionView = UICollectionView(frame: view.frame, collectionViewLayout: flowLayout)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBarSet()
        attribute()
        setUpUI()
    }
    
    private func searchBarSet() {
//        searchController.searchBar.tintColor = .init(red: 255, green: 246, blue: 18, alpha: 1)
        searchController.searchBar.delegate = self
        self.navigationItem.searchController = searchController
    }

    private func setUpUI() {
        
    }
    
    private func attribute() {
        
    }
}

// MARK: - UISearchBarDelegate
extension MainViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
      guard let searchText = searchBar.text else { return }
      print(searchText)
    }
}
