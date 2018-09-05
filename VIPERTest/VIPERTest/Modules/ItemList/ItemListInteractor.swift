//
//  ItemListDefaultInteractor.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation

protocol ItemListInteractorProtocol {
    var presenter: ItemListPresenter? { get set }

    func fetchItemList() -> [[String: String]]
}


class ItemListInteractor: ItemListInteractorProtocol {
    weak var presenter: ItemListPresenter?
    
//    func fetchItemList() -> [Item] {
//        var itemList = [Item]()
//        let allItem = APIDataManager.itemListData()
//        for item in allItem {
//            itemList.append(Item(attributes: item))
//        }
//        return itemList
//    }

    func fetchItemList() -> [[String: String]] {
        let allItem = APIDataManager.itemListData()
        return allItem
    }
}
