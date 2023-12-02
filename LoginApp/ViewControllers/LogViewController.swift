//
//  LogViewController.swift
//  LoginApp
//
//  Created by Dmitry Parhomenko on 01.12.2023.
//

import UIKit

class LogViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.userName
        passwordTF.text = user.password
    }
    
    @IBAction func userNameButtonAction() {
        showAlert(
            withTitle: "Hello!",
            andMessage: "Your Name is \(user.userName)"
        )
    }
    
    @IBAction func passwordButtonAction() {
        showAlert(
            withTitle: "Ok!",
            andMessage: "Your password: \(user.password)"
        )
    }
    
    override func touchesBegan(
        _ touches: Set<UITouch>,
        with event: UIEvent?
    ) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    private func showAlert(
        withTitle title: String,
        andMessage message: String
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAlert = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTF.text == user.userName,
              passwordTF.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            return false
        }
        return true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarVC = segue.destination as? UITabBarController
        let welcomeVC = tabBarVC?.viewControllers?[0] as? WelcomeViewController
        let navigationVC = tabBarVC?.viewControllers?[1] as? UINavigationController
        let nameVC = navigationVC?.viewControllers[0] as? NameViewController
        
        welcomeVC?.userFromWelcomeVC = user
        nameVC?.userFromNameVC = user
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

    

