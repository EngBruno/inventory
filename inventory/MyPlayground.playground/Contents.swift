import UIKit
class Product {
    var name:String?
    var count:Int?
    var inputDate=Date()
    
    init(name:String,count:Int) {
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
let product = Product( name: "agua", count:3)
print(product.name)
print(product.count)
print(product.getDateFormat())

