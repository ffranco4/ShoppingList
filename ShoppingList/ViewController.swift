//
//  ViewController.swift
//  ShoppingList
//
//  Created by Student on 7/27/20.
//  Copyright © 2020 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var shoppingTableView: UITableView!
    
    let items = ["apples", "bannanas", "grapes"]
    override func viewDidLoad() {
        super.viewDidLoad()
        shoppingTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }


}

