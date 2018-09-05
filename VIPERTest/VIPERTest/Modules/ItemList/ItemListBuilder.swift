//
//  ItemListDefaultBuilder.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

class ItemListBuilder {

    func main() -> UIViewController {

        let interactor = ItemListInteractor()
        let presenter = ItemListPresenter()
        let router = ItemListRouter()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let view = storyboard.instantiateViewController(withIdentifier: "ItemListViewController") as? ItemListViewController else { return UIViewController() }
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        //router.presenter = presenter
        //router.viewController = view

        return view
    }

    deinit {
        print("deinit - \(type(of: self))")
    }
}
