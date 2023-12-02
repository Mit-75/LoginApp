//
//  User.swift
//  LoginApp
//
//  Created by Dmitry Parhomenko on 02.12.2023.
//

import Foundation

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        return User(userName: "Aleksey", password: "123", person: Person.getPerson())
    }
}
