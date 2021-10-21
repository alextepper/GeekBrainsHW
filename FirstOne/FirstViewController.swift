//
//  FirstViewController.swift
//  FirstOne
//
//  Created by Alexander Tepper on 18/10/2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            view.addGestureRecognizer(tap)

           }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard let username = usernameTextField.text,
              let password = passwordTextField.text
        else {return}

        if username == "root",
           password == "1234" {
            print("Login Correct")
            usernameTextField.backgroundColor = UIColor.green
            passwordTextField.backgroundColor = UIColor.green
        }
        else {
            print("Login or Password are not correct")
            usernameTextField.backgroundColor = UIColor.red
            passwordTextField.backgroundColor = UIColor.red
        }
    }
    
}
