import UIKit

class AdminMenuTableViewCell: UITableViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!


    func bind(menuItem: Menu) {
        imageView.image = UIImage(named: menuItem.imageData!)
        nameLabel.text = menuItem.name
        priceLabel.text = getFormattedCurrency(menuItem.price)
        descLabel.text = menuItem.desc
    }
}
