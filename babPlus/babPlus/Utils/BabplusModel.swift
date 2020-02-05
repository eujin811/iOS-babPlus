//
//  BabplusModel.swift
//  babPlus
//
//  Created by Hongdonghyun on 2020/02/05.
//  Copyright © 2020 YoujinMac. All rights reserved.
//

import Foundation

// MARK: - BabMenu
struct BabMenu: Decodable {
    let date: String
    let contents: [String: Content]
}

// MARK: - Content
struct Content: Decodable {
    let image: URL?
    let address: String
    let launch, dinner: [String]
}
