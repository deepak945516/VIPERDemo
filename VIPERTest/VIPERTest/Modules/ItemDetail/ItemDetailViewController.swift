//
//  ItemDetailViewController.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

protocol ItemDetailViewControllerProtocol: class {
    var presenter: ItemDetailPresenter? { get set }
    var itemDetail: Item? { get set }
}

class ItemDetailViewController: UIViewController, ItemDetailViewControllerProtocol {
    var itemDetail: Item?
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemPriceLabel: UILabel!
    var presenter: ItemDetailPresenter?


    // MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Private Methods
    private func initialSetup() {
        itemNameLabel.text = itemDetail?.itemName
        itemPriceLabel.text = itemDetail?.itemPrice
        self.navigationItem.title = "Item Detail"
    }

    // MARK: - IBAction Methods
    
}
