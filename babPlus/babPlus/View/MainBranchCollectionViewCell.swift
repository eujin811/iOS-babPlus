//
//  MainBranchCollectionViewCell.swift
//  babPlus
//
//  Created by YoujinMac on 2020/02/04.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import UIKit

class MainBranchCollectionViewCell: UICollectionViewCell {
    static let identifier = "MainBranchCell"
    
    private let branchImage = UIImageView()
    private let branchName = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUPViews()
        setUPConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUPViews() {
        self.clipsToBounds = true
        
        layer.cornerRadius = 20
        
        branchImage.contentMode = .scaleAspectFill
        contentView.addSubview(branchImage)
        
        branchName.textAlignment = .center
        branchName.textColor = .darkGray
        branchName.font = UIFont.preferredFont(forTextStyle: .headline)
        contentView.addSubview(branchName)
        
//        branchName.textColor = .white
//        branchImage.addSubview(branchName)
    }
    
    private func setUPConstraints() {
        [branchImage, branchName].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            branchImage.topAnchor.constraint(equalTo: contentView.topAnchor),
            branchImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            branchImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            /*branchImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)*/
            
           /* branchName.leadingAnchor.constraint(equalTo: branchImage.leadingAnchor),
            branchName.trailingAnchor.constraint(equalTo: branchImage.trailingAnchor),
            branchName.bottomAnchor.constraint(equalTo: branchImage.bottomAnchor),
            branchName.heightAnchor.constraint(equalToConstant: 20),
            */
            branchName.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            branchName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            branchName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            branchName.heightAnchor.constraint(equalToConstant: 20)
            
        ])
        
    }
    
    func configure(branchImage image: UIImage?, branchName name: String) {
        branchImage.image = image
        branchName.text = name
    }
    
}
