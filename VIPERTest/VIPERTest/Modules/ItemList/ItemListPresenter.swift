//
//  ItemListDefaultPresenter.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation

protocol ItemListPresenterProtocol: class {
    var router: ItemListRouter? { get set }
    var interactor: ItemListInteractor? { get set }
    var view: ItemListViewController? { get set }

    func getItems() -> [Item]
    func didSelectItem(item: Item)
}

class ItemListPresenter: ItemListPresenterProtocol {

    // MARK: - Properties
    var router: ItemListRouter?

    var interactor: ItemListInteractor?

    weak var view: ItemListViewController?

    func getItems() -> [Item] {
        var itemList = [Item]()
        let allItem = interactor?.fetchItemList()
        for item in allItem! {
            itemList.append(Item(attributes: item))
        }
        return itemList
    }

    func didSelectItem(item: Item) {
        router?.selectedItemRoute(view: view!, item: item)
    }

}
