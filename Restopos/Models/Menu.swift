import Foundation

class Menu {
    let id: UUID
    let imageData:String
    let name:String
    let price: Double
    let desc:String
    
    init(id: UUID, imageData: String, name: String, price: Double, desc: String) {
        self.id = id
        self.imageData = imageData
        self.name = name
        self.price = price
        self.desc = desc
    }
}
