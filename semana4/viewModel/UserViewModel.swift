//
//  UserViewModel.swift
//  semana4
//
//  Created by Linder Anderson Hassinger Solano    on 23/09/22.
//

class UserViewModel {
    
    var users: [User] = [User]()
    
    func getUsers() -> [User] {
        return users
    }
    
    func createUser(user: User) {
        users.append(user)
    }
}
