import Foundation

class Order {
    
    let id: UUID;
    let orderName:String;
    let items:String;
    let status: String;
   
    init(id: UUID, orderName: String, items: String, status: String) {
        self.id = id
        self.orderName = orderName
        self.items = items
        self.status = status
    }
    
}
