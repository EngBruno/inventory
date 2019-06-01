//
//  Product.swift
//  inventory
//
//  Created by Bruno Roberto on 08/05/19.
//  Copyright © 2019 Bruno Roberto. All rights reserved.
//

import Foundation

class Product {
    var id:Int?
    var name:String?
    var count:Int?
    var inputDate=Date()
    
    init(id:Int,name:String,count:Int) {
        self.id = id
        self.name = name
        self.count = count
    }
    func  getDateFormat()->String{
        let format = DateFormatter()
        format.dateFormat = "dd/MM/yyyy HH:mm:ss"
        let result = format.string(from: self.inputDate)
        return result
    }
}
