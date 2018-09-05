//
//  ItemListDefaultRouter.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

protocol ItemListRouterProtocol {
    var presenter: ItemListPresenter? { get set }
    func selectedItemRoute(view: ItemListViewController, item: Item)
}

class ItemListRouter: ItemListRouterProtocol {
    weak var presenter: ItemListPresenter?
    weak var viewController: UIViewController?

    func selectedItemRoute(view: ItemListViewController, item: Item) {
        let itemDetailViewController = ItemDetailBuilder().createItemDetailModule(item: item)
        view.navigationController?.pushViewController(itemDetailViewController, animated: true)
    }
}
