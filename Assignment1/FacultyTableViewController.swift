//
//  FacultyTableViewController.swift
//  Assignment1
//
//  Created by Nishant on 17/08/20.
//  Copyright © 2020 Nishant. All rights reserved.
//

import UIKit

class FacultyTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    let faculties = ["Maxwell sir", "Arpit sir", "Pooja ma'am", "Krupa ma'am", "Zakiya ma'am"]
    let students = ["Nishant", "Dipak", "Mayur", "Varun", "Rakshit", "Akshay", "Harsh", "Pavan", "Hardik", "Dharmik"]

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
            case 0:
                return faculties.count
            case 1:
                return students.count
            default:
                return 0
            }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            let cellItem = tableView.dequeueReusableCell(withIdentifier: "cellFaculties", for: indexPath) as! SingleTableViewCell
            cellItem.lblFacultyIndex.text = String(indexPath.row + 1)
            cellItem.lblFacultyName.text = faculties[indexPath.row]
            cell = cellItem
        case 1:
            let cellItem = tableView.dequeueReusableCell(withIdentifier: "cellStudents", for: indexPath) as! SingleTableViewCell
            cellItem.lblStudentIndex.text = String(indexPath.row + 1)
            cellItem.lblStudentName.text = students[indexPath.row]
            cell = cellItem
        default:
            return cell
        }

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
            case 0:
                return "Faculties"
            case 1:
                return "Students"
            default:
                return ""
            }
    }

    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return ["F", "S"]
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
