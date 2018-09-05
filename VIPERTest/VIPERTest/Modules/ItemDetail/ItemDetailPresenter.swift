//
//  ItemDetailPresenter.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation

protocol ItemDetailPresenterProtocol: class {
    var view: ItemDetailViewController? { get set }
    var interactor: ItemDetailInteractor? { get set }
    var router: ItemDetailRouter? { get set }
}

class ItemDetailPresenter: ItemDetailPresenterProtocol {
    var interactor: ItemDetailInteractor?
    var router: ItemDetailRouter?
    var view: ItemDetailViewController?


}
