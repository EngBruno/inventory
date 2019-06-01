//
//  ViewController.swift
//  inventory
//
//  Created by Bruno Roberto on 08/05/19.
//  Copyright © 2019 Bruno Roberto. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController,ProductDAO {
    
    var listProducts = [
        Product(id:1, name: "agua", count: 3),
        Product(id:2,name: "arroz", count: 10),
        Product(id:3,name: "bolacha", count: 10)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listProducts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let result = listProducts[row]
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default,reuseIdentifier:nil)
        cell.textLabel!.text = result.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(self.listProducts[indexPath.row].name!)
        performSegue(withIdentifier: "segueProduct", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "segueProduct"){
            let view  = segue.destination as! ProductViewController
            view.listView = self
        }
    }
    
    func add(_ product: Product) {
        self.listProducts.append(product)
        tableView.reloadData()
    }
    
}

