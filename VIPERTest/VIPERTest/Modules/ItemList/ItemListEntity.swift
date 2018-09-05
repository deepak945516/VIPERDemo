//
//  ItemListDefaultEntity.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation

struct Item {
    var itemName: String?
    var itemPrice: String?

    init(attributes: [String: String]) {
        self.itemName = attributes["itemName"]
        self.itemPrice = attributes["itemPrice"]
    }
}
