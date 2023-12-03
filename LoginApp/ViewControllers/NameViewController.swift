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
        if let notOptionalUser = user {
            ageLabel.text = "Возраст: \(notOptionalUser.person.age)"
            nameLabel.text = "Имя: \(notOptionalUser.person.name)"
            surnameLabel.text = "Фамилия: \(notOptionalUser.person.surname)"
            companyLabel.text = "Компания: \(notOptionalUser.person.company)"
            jobTitleLabel.text = "Должность: \(notOptionalUser.person.jobTitle)"
            hobbiesLabel.text = "Увлечения: \(notOptionalUser.person.hobbies)"
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.user = user
    }
}
