//
//  BioViewController.swift
//  LoginApp
//
//  Created by Dmitry Parhomenko on 01.12.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    var user: User?
    
    @IBOutlet var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let userFromBioVC = user {
            bioLabel.text = userFromBioVC.person.bio
        }
    }
}
