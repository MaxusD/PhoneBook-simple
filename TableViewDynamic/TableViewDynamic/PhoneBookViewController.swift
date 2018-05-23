//
//  PhoneBookViewController.swift
//  TableViewDynamic
//
//  Created by Maxcorp on 5/16/18.
//  Copyright © 2018 Maxcorp. All rights reserved.
//

import UIKit


class PhoneBookViewController: UITableViewController {
    var phoneBook = [Contact]()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let contact = Contact(name: "Александр", surname: "Книжник", phoneNumber: "+380661234567", img: UIImage(named: "cont1")!)
        let contact2 = Contact(name: "Вася", surname: "Пупкин", phoneNumber: "+380931234567", img: UIImage(named: "cont2")!)
        let contact3 = Contact(name: "Сергей", surname: "Иванов", phoneNumber: "+380681234567", img: UIImage(named: "cont1")!)
        let contact4 = Contact(name: "Иван", surname: "Петров", phoneNumber: "+380981234567", img: UIImage(named: "cont2")!)
        phoneBook.append(contact)
        phoneBook.append(contact2)
        phoneBook.append(contact3)
        phoneBook.append(contact4)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return phoneBook.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let contact = phoneBook[indexPath.row]
        cell.textLabel?.text = contact.name + " " + contact.surname

        return cell
    }
 

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = phoneBook[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let contactViewController = storyboard.instantiateViewController(withIdentifier: "ContactViewController") as! ContactViewController
        contactViewController.contact = contact
        self.navigationController?.pushViewController(contactViewController, animated: true)
        
    }

}
