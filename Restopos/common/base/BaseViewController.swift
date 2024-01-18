import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func showAlert(title:String, message:String, dismissLabel:String, onDismiss: (()->Void)? = nil){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: dismissLabel, style: .default))
        self.present(alert, animated: true) {
            if let onDismiss {
                onDismiss();
            } 
        }
    }

}
