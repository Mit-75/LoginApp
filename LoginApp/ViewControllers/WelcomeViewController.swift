//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Dmitry Parhomenko on 01.12.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var myNameLabel: UILabel!
    
    var userFromWelcomeVC: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = ""
        myNameLabel.text = ""
        
        if let userFromWelcomeVC = userFromWelcomeVC {
            welcomeLabel.text = "Welcome, \(userFromWelcomeVC.userName)!"
            myNameLabel.text = "My name is \(userFromWelcomeVC.person.name)."
        }
    }

}
