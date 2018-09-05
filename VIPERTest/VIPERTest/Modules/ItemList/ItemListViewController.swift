//
//  ItemListDefaultViewController.swift
//  VIPERTest
//
//  Created by Deepak Kumar on 04/09/18.
//  Copyright © 2018 Deepak Kumar. All rights reserved.
//

import Foundation
import UIKit

protocol ItemListViewControllerProtocol: class {
    var presenter: ItemListPresenter? { get set}
}

class ItemListViewController: UIViewController, ItemListViewControllerProtocol {
    // MARK: - Properties
    @IBOutlet weak var itemTableView: UITableView!

    var presenter: ItemListPresenter?
    var itemList: [Item] = [Item]()

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
        itemList = (presenter?.getItems())!
        self.navigationItem.title = "Item List"
    }

    // MARK: - IBAction Methods

}

// MARK: - TableView DataSource
extension ItemListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let itemCell = tableView.dequeueReusableCell(withIdentifier: "itemCell") else { return UITableViewCell() }
        itemCell.textLabel?.text = itemList[indexPath.row].itemName
        itemCell.detailTextLabel?.text = itemList[indexPath.row].itemPrice
        return itemCell
    }
}

// MARK: - TableView Delegate
extension ItemListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelectItem(item: itemList[indexPath.row])
    }
}


