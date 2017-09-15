//
//  LogInViewController.swift
//  Mockup
//
//  Created by Jeffrey Wong on 9/14/17.
//  Copyright © 2017 Jeffrey Wong. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func attemptLogIn(_ sender: UIButton) {
        if (emailField.text != "" && passField.text != "" && (emailField.text?.characters.contains("@"))!) {
            let intoAppVC = self.storyboard?.instantiateViewController(withIdentifier: "navIntoApp")
            self.present(intoAppVC!, animated: true, completion: nil)
        } else {
            let incorrectAlert:UIAlertController = UIAlertController(title: "Oops!", message: "Looks like you haven't entered the correct information!", preferredStyle: .alert)
            let actionTryAgain:UIAlertAction = UIAlertAction(title: "Try Again!", style: .cancel) { (_:UIAlertAction) in
                return
            }
            incorrectAlert.addAction(actionTryAgain)
            self.present(incorrectAlert, animated: true) {
                return
            }

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
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
