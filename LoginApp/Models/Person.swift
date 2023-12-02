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
    let bio: String
    
    static func getPerson() -> Person {
        return Person(
            age: 48,
            name: "Дмитрий",
            surname: "Пархоменко",
            company: "Россети Урал",
            jobTitle: "Главный инженер ПО ЗЭС",
            hobbies: "Audio books Lit RPG, Swift",
            bio: "Немного о себе: Родился 27.08.1975 в городе Миасс, Челябинская область. Образование высшее, закончил Южно-Уральский Государственный Университет, энергетический факультет. Женат, трое замечательных детей. Старший сын - Алексей 24 года, работает программистом, дочь - Екатерина 17 лет, и младший сын - Антон 9 лет. Живу и работаю в г. Екатеринбург в главным инженером Западных Электрических Сетей. "
        )
    }
}
