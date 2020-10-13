//
//  HistoryTableViewController.swift
//  ConverterApp
//
//  Created by Chathuranga Mohottala on 4/12/19.
//  Copyright © 2019 pamuditha liyanage. All rights reserved.
//

import UIKit

class HistoryTableViewController: UITableViewController {
    var items: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "History"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = items?[indexPath.row]
        
        return cell
    }
}
