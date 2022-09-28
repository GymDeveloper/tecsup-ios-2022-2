//
//  ListUsersViewController.swift
//  semana4
//
//  Created by Linder Anderson Hassinger Solano    on 27/09/22.
//

import UIKit

class ListUsersViewController: UIViewController {
    
    /// instancias
    let userViewModel: UserViewModel = UserViewModel()
    
    /// variables
    @IBOutlet weak var tableView: UITableView!
    
    var users: [User] = [
        User(
            name: "Linder",
            lastname: "Hassinger",
            birthday: "03-04-00",
            phonenumber: "9999",
            address: "Av siempre viva"
        ),
        User(
            name: "Lucas",
            lastname: "Hassinger",
            birthday: "03-04-00",
            phonenumber: "9999",
            address: "Av tecsup 123"
        ),
        User(
            name: "Pedro",
            lastname: "Hassinger",
            birthday: "03-04-00",
            phonenumber: "9999",
            address: "Av utec 123"
        ),
        User(
            name: "Juan",
            lastname: "Hassinger",
            birthday: "03-04-00",
            phonenumber: "9999",
            address: "Av tecsup 123"
        ),
        User(
            name: "Paco",
            lastname: "Hassinger",
            birthday: "03-04-00",
            phonenumber: "9999",
            address: "Av spain 123"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(userViewModel.getUsers())
        setUpTable()
    }
    
    func setUpTable() {
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ListUsersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let model = users[indexPath.row]
            
        var listContentConfiguration = UIListContentConfiguration.cell()
        listContentConfiguration.text = model.name
        listContentConfiguration.secondaryText = model.address
        listContentConfiguration.image = UIImage(systemName: "person")
        
        cell.contentConfiguration = listContentConfiguration
    
        return cell
    }
    
}
