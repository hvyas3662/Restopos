import CoreData

class MenuRepository {
	
	static let shared = MenuRepository()
    
    private var context = getCoreDataContext()

    private init(){}

    func getAllMenuItems() -> [Menu]{
    	var menuItemsList:[Menu] = []
    	do{
            try menuItemsList = context.fetch(MenuItem.fetchRequest()) 
        }
        catch{
            print("Error in fetching data")
        }

        return menuItemsList
    }

    func deleteMenuItem(menuItem: Menu) -> Bool{
    	var isSuccess: Bool = false
 		do {
            self.context.delete(menuItem)
            try self.context.save()
            isSuccess = true
        } catch {
            print("Error in deleting")
        } 
        return isSuccess 
    }

    func addMenuItem() -> Bool{

    }

    func updateMenuItem() -> Bool{

    }

}