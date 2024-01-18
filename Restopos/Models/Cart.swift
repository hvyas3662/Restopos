import Foundation

class Cart{
    let id: UUID
    let items:String
  
    init(id: UUID, items: String) {
        self.id = id
        self.items = items
    }
}
