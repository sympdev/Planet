//
//  GoalTableViewController.swift
//  Planet
//
//  Created by Josh Martine on 10/24/17.
//  Copyright © 2017 Josh Martine. All rights reserved.
//

import UIKit

class GoalTableViewController: UITableViewController {
    
    var goals = [Goal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        goals = [
            Goal(title: "qwertyuiop", description: "asd fgh jkl zxc vbn m.")!,
            Goal(title: "qwertyuiop 1", description: "asd fgh jkl zxc vbn m.")!,
            Goal(title: "qwertyuiop2 ", description: "asd fgh jkl zxc vbn m.")!,
            Goal(title: "qwertyuiop33", description: "asd fgh jkl zxc vbn m.")!,
            Goal(title: "qwertyuiop1231", description: "asd fgh jkl zxc vbn m.")!,
            Goal(title: "qwertyuiop12312323", description: "asd fgh jkl zxc vbn m.")!,
            Goal(title: "qwertyuiop12123123123123123", description: "asd fgh jkl zxc vbn m.")!,
            Goal(title: "qwertyuio1®p", description: "asd fgh jkl zxc vbn m.")!,
            ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    @IBAction func updateTaskStatus(_ sender: UIButton) {
        sender.setImage(UIImage(named: "check")!, for: .normal)
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return goals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "IBGoalCell") as? GoalTableViewCell else {
            fatalError("This cell is not an instance of GoalTableViewCell")
        }
        
        let goal = goals[indexPath.row]
        
        cell.goalTitle.text = goal.title
        cell.goalDescription.text = goal.description
        
        return cell
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
