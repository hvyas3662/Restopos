import UIKit

class LoginVC: BaseViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onLoginButtonClicked(_ sender: Any) {
        let username = usernameTF.text
        let password = passwordTF.text
   
        if (username == "admin" && password == "admin"){
            performSegue(withIdentifier: "LoginToHome", sender: nil)
            self.navigationController?.tabBarController?.hidesBottomBarWhenPushed = true
        } else {
            showAlert(title: "Oops!", message:  "Invalid Credentials", dismissLabel: "ok");
        }
    }
}
