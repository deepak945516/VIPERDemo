//
//  ItemDetailInteractor.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation

protocol ItemDetailInteractorProtocol {
    var presenter: ItemDetailPresenter? { get set }
}

class ItemDetailInteractor: ItemDetailInteractorProtocol {
    var presenter: ItemDetailPresenter?
    
    
}
