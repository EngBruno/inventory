//
//  ProductViewController.swift
//  inventory
//
//  Created by Bruno Roberto on 10/05/19.
//  Copyright © 2019 Bruno Roberto. All rights reserved.
//

import UIKit

class ProductViewController:UIViewController{
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var count: UITextField!
    
    
    var listView:ListViewController!
    
    @IBAction func save() {
        let nameCurrent = name.text
        let countCurrent = count.text
        
        let idCurrent = listView.listProducts.count+1
        let product = Product(id:idCurrent,name: nameCurrent!, count: Int(countCurrent!)!)
        if let navigation =  self.navigationController{
            self.listView.add(product)
            navigation.popViewController(animated: true)
        }
        
        
    }
}
