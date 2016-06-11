//
//  TechCompaniesListViewController.swift
//  TechCompanies
//
//  Created by Joseph G. Greene on 6/8/16.
//  Copyright © 2016 Joseph G. Greene. All rights reserved.
//

import UIKit

class TechCompaniesListViewController: UITableViewController {
    
    var schoolList:[Entity]! = EntitiesHelper.getSchools()
    var techCompanyList:[Entity]! = EntitiesHelper.getTechCompanies()
//    var section;.title:[String] = ("Tecchhh, Ohhhnon")
    let techDetailSegue = "techDetailSegue"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Entity list"
       techCompanyList = EntitiesHelper.getTechCompanies()
        schoolList = EntitiesHelper.getSchools()
/*
 EntitiesHelper.getTechCompanies(<#T##EntitiesHelper#>)*/

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return schoolList.count
        }
        if section == 1 {
            return techCompanyList.count
        }
        return 0
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Schools"
        }
        if section == 1 {
            return "Tech Companies"
        }
        return nil
    }
    

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("techCell", forIndexPath: indexPath)

        // Configure the cell...
        
        if indexPath.section == 0 {
           cell.textLabel?.text = schoolList[indexPath.row].name
            cell.detailTextLabel?.text = "I love studying"
        }
        else {
            
            cell.textLabel?.text = techCompanyList[indexPath.row].imageName
            cell.detailTextLabel?.text = "I love working"
        }

        return cell
    }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "techDetailSegue" {
            let techCompanyDetailController = segue.destinationViewController as? TechCompanyDetailViewController
            let section = self.tableView.indexPathForSelectedRow?.section
            var list = (section == 0 ? schoolList: techCompanyList)
            let row = self.tableView.indexPathForSelectedRow?.row
            techCompanyDetailController!.entity = list[row!]
//        if segue.identifier == "techDetailSegue" {
//            let techDetailViewController = segue.destinationViewController as? TechCompanyDetailViewController
//            let section = self.tableView.indexPathForSelectedRow?.section
//            let row = self.tableView.indexPathForSelectedRow?.row
//            var list = (section == 0 ? schoolList: techCompanyList)
//            techDetailViewController!.entity = list[row!]
        
        
        }
        
    }


}
