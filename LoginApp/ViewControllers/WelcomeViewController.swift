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
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = ""
        myNameLabel.text = ""
        
        if let notOptionalUser = user {
            welcomeLabel.text = "Welcome, \(notOptionalUser.userName)!"
            myNameLabel.text = "My name is \(notOptionalUser.person.name)."
        }
    }
}
