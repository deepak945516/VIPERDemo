//
//  ItemDetailBuilder.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

class ItemDetailBuilder {

    func createItemDetailModule(item: Item) -> UIViewController {
        let interactor = ItemDetailInteractor()
        let presenter = ItemDetailPresenter()
        let router = ItemDetailRouter()
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        guard let itemDetailViewController = storyboard.instantiateViewController(withIdentifier: "ItemDetailViewController") as? ItemDetailViewController else { return UIViewController() }
        itemDetailViewController.itemDetail = item
        itemDetailViewController.presenter = presenter
        presenter.view = itemDetailViewController
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        //router.interactor = interactor
        //router.ViewController = itemDetailViewController
        return itemDetailViewController
    }

    deinit {
        print("Deinit \(type(of: self))")
    }
}
