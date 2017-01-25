//
//  TableViewController.swift
//  Lab4
//
//  Created by James Yang on 1/24/17.
//  Copyright © 2017 James Yang. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let songNames = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
    let artistNames = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
    let albumNames = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
    let yearNames = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
        
    override func viewDidLoad() {
        super.viewDidLoad()

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // This sets the number of rows in the table view, # instances of your model class
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songNames.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Gets an instance of my Song Table View Cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "songCell", for: indexPath) as? SongTableViewCell

        
        // Configure the cell...
        cell?.songTitle?.text = songNames[indexPath.row];
        cell?.artistTitle?.text = artistNames[indexPath.row];
        cell?.albumTitle?.text = albumNames[indexPath.row];
        cell?.yearTitle?.text = yearNames[indexPath.row];
        
        return cell!
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if seque.identifier == "showSongDetail" {
            let destinationViewController = seque.destination as? ViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow
            destinationViewController?.dataFromTable = songNames[(selectedIndexPath?.row)]
        }
    }
 
    
}
