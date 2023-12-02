//
//  Person.swift
//  LoginApp
//
//  Created by Dmitry Parhomenko on 02.12.2023.
//

import Foundation

struct Person {
    let age: Int
    let name: String
    let surname: String
    let company: String
    let jobTitle: String
    let hobbies: String
    
    static func getPerson() -> Person {
        return Person(
            age: 48,
            name: "Дмитрий",
            surname: "Пархоменко",
            company: "Россети Урал",
            jobTitle: "Главный инженер ПО ЗЭС",
            hobbies: "Audio books Lit RPG"
        )
    }
}
