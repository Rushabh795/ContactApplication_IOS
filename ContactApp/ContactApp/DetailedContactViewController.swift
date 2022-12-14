//
//  DetailedContactViewController.swift
//  My_Contacts
//
//  Created by Rushabh Shah on 15/08/22.
//

import UIKit

class DetailedContactViewController: UIViewController {
    
    var contactList: ContactList!
    var isNew: Bool!
    var indexPath: IndexPath!
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var contactNumberField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //load proper information
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if !isNew{
            let contact = contactList.list[indexPath.row]
            firstNameField.text = contact.name
            lastNameField.text = contact.lastName
            contactNumberField.text = contact.number
        }
    }
    
    //"Save" contact changes
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        var contact: Contact!
        

        if isNew {
            guard
                let name = firstNameField.text,
                let lastName = lastNameField.text,
                let number = contactNumberField.text
            else {return}
            
            if (name != "" || lastName != "" || number != ""){
                contactList.addContact(name: name, lastName: lastName, number: number)
            }
        }
            else {
                contact = contactList.list[indexPath.row]
                guard
                    let name = firstNameField.text,
                    let lastName = lastNameField.text,
                    let number = contactNumberField.text
                else {return}
                

                contactList.updateContact(at: indexPath.row, name: name, lastName: lastName, number: number)
                
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

