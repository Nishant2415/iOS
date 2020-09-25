//
//  ViewController.swift
//  LoginDatabase
//
//  Created by Nishant on 25/09/20.
//  Copyright © 2020 Nishant. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var context : NSManagedObjectContext! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Login", in: context)
        let login = NSManagedObject(entity: entity!, insertInto: context)
        
        login.setValue("Nishant", forKey: "username")
        login.setValue("Nish24", forKey: "password")
        
        do {
            try context.save()
            
        } catch {
            print("Error in the insert query!")
        }
        
        print("Hello this core data demo!")
    }
    
    @IBAction func checkCredentials(_ sender: Any) {
        let userData = fetchData()
        if(tfUsername.text == userData.username && tfPassword.text == userData.password) {
            print("Login successful!")
        } else {
            print("Invalid username or password!")
        }
    }
    
    func fetchData() -> (username: String, password: String) {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Login")
        var dbUsername : String!
        var dbPassword : String!
        do {
            let result = try context.fetch(request)
            for data in result {
                dbUsername = (data as AnyObject).value(forKey: "username") as! String
                dbPassword = (data as AnyObject).value(forKey: "password") as! String
            }
        } catch {
            print("Error in fetching data!")
        }
        return (dbUsername, dbPassword)
    }
    
}
