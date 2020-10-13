//
//  ViewController.swift
//  ConverterApp
//
//  Created by pamuditha liyanage on 4/6/19.
//  Copyright © 2019 pamuditha liyanage. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let items = ["Volume","Distance","Liquid-Volume","Speed","Temperature","Weight"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
        cell.imageView?.image = UIImage(named: items[indexPath.row])
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "ConverterScreen") as! ConverterViewController
        controller.converterType = Converter(rawValue: indexPath.row)
        self.navigationController?.pushViewController(controller, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

