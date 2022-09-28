//
//  UserViewController.swift
//  semana4
//
//  Created by Linder Anderson Hassinger Solano    on 23/09/22.
//

import UIKit

class UserViewController: UIViewController {

    let userViewModel: UserViewModel = UserViewModel()
    
    /// Antes del viewDidLoad vamos a referencias los inputs
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var birthday: UITextField!
    @IBOutlet weak var phonenumber: UITextField!
    @IBOutlet weak var address: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTapUserCreate(_ sender: UIButton) {
        let user: User = User(
            name: txtName.text!,
            lastname: lastname.text!,
            birthday: birthday.text!,
            phonenumber: phonenumber.text!,
            address: address.text!
        )
        userViewModel.createUser(user: user)
        print(userViewModel.getUsers())
    }
}
