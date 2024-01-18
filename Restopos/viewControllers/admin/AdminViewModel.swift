class AdminViewModel {

	 func getAllMenuItemList(onResult:([Menu])->Void){
	 	let menuItemList = MenuRepositiory.getAllMenuItems()
	 	DispatchQueue.main.async {
            onResult(menuItemList)
        }
    }

     func deleteMenuItem(menuItem:Menu, onResult:([Bool])->Void){
    	let isDeleted = MenuRepositiory.deleteMenuItem(menuItem) 
    	DispatchQueue.main.async {
            onResult(isDeleted)
        }
    }

}