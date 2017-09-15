//
//  RegisterViewController.swift
//  Mockup
//
//  Created by Jeffrey Wong on 9/13/17.
//  Copyright © 2017 Jeffrey Wong. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
        let first:String? = firstNameField.text
        let last:String? = lastNameField.text
        let email:String? = emailField.text
        let password:String? = passwordField.text
        // making sure fields have been entered
        // back-end storing new profile
        if (first != nil && last != nil && email != nil && password != nil && first != "" && last != "" && email != "" && password != "") {
            let registeredAlert:UIAlertController = UIAlertController(title: "Alright!", message: "You've successfully created a new profile on [AppName]", preferredStyle: .alert)
            let actionOK:UIAlertAction = UIAlertAction(title: "Ok!", style: .cancel) { (_:UIAlertAction) in
                //_ = self.navigationController?.popViewController(animated: true)
                let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController")
                self.present(loginVC!, animated: true, completion: nil)
            }
            registeredAlert.addAction(actionOK)
            self.present(registeredAlert, animated: true) {
                return
            }
        } else {
            let notRegisteredAlert:UIAlertController = UIAlertController(title: "Oops!", message: "Looks like you haven't filled the form out completely!", preferredStyle: .alert)
            let actionTryAgain:UIAlertAction = UIAlertAction(title: "Try Again!", style: .cancel) { (_:UIAlertAction) in
                return
            }
            notRegisteredAlert.addAction(actionTryAgain)
            self.present(notRegisteredAlert, animated: true) {
                return
            }

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
