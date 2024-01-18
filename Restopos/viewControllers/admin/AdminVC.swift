import UIKit

class AdminVC: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var menuTableView: UITableView!
        
    var menuItemsList: [MenuItem] = []

    var viewModel = AdminViewMOdel();
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setUpTableView()
        attachNotificationCenter()
        fetechData()
    }

    func setUpTableView(){
        menuTableView.dataSource = self
        menuTableView.delegate = self
    }
    
    func attachNotificationCenter(){
        NotificationCenter.default.addObserver(self, selector: #selector(fetechData), name: Notification.Name(NC_ADMIN_MENU_IITEM_LIST_UPDATED), object: nil)
    }

    @objc
    func fetechData(){
        viewModel.getAllMenuItemList{ itemList in
            self.menuItemsList = itemList
            self.menuTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuItemsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuItemCell = menuTableView.dequeueReusableCell(withIdentifier: CELL_ID_ADMIN_MENU_ITEM, for: indexPath) as! DashboardTableViewCell
        menuItemCell.bind(menuItemsList[indexPath.row])
        return menuItemCell
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let contextualAction = UIContextualAction(style: .destructive, title: "Delete") { _,_,_  in 
            let menuItem = self.menuItemsList[indexPath.row]
            viewModel.deleteMenuItem(menuItem){ isDeleted in
                if isDeleted {
                    self.menuItemsList.remove(menuItem)
                    self.menuTableView.reloadData()
                }
            }
        }
        return UISwipeActionsConfiguration(actions: [contextualAction])
    }

   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let menuItem = menuItemsList[indexPath.row]
        performSegue(withIdentifier: SEGUE_ADMIN_TO_MENU_ITEM_FORM, sender: menuItem)
    }
   
    @IBAction func addBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: SEGUE_ADMIN_TO_MENU_ITEM_FORM, sender: nil)
    }
    
}
