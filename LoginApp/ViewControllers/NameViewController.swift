//
//  NameViewController.swift
//  LoginApp
//
//  Created by Dmitry Parhomenko on 01.12.2023.
//

import UIKit

final class NameViewController: UIViewController {
    
    var userFromNameVC: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        print(userFromNameVC)
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
                
        bioVC?.userFromBioVC = userFromNameVC
       
        
    }
    
}
