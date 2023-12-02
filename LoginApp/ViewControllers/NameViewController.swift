//
//  NameViewController.swift
//  LoginApp
//
//  Created by Dmitry Parhomenko on 01.12.2023.
//

import UIKit

final class NameViewController: UIViewController {
    
    var user: User?
    
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    @IBOutlet var hobbiesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let userFromNameVC = user {
            ageLabel.text = "Возраст: \(userFromNameVC.person.age)"
            nameLabel.text = "Имя: \(userFromNameVC.person.name)"
            surnameLabel.text = "Фамилия: \(userFromNameVC.person.surname)"
            companyLabel.text = "Компания: \(userFromNameVC.person.company)"
            jobTitleLabel.text = "Должность: \(userFromNameVC.person.jobTitle)"
            hobbiesLabel.text = "Увлечения: \(userFromNameVC.person.hobbies)"
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.user = user
    }
}
