//
//  ContactViewController.swift
//  TableViewDynamic
//
//  Created by Maxcorp on 5/17/18.
//  Copyright © 2018 Maxcorp. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var nameContact: UILabel!
    @IBOutlet weak var imageContact: UIImageView!
    @IBOutlet weak var phoneContact: UILabel!
    
    var contact: Contact?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if contact != nil {
            nameContact.text = (contact?.name)! + " " + (contact?.surname)!
            phoneContact.text = contact?.phoneNumber
            imageContact.image = contact?.img
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
