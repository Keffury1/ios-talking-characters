//
//  TableViewController.swift
//  TalkingCharacters
//
//  Created by Bobby Keffury on 8/1/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Returns the number of characters that the model contains for the number of rows.
        return Model.shared.characters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Sets the new cell to the custom TableViewCell or else it returns a blank UITableViewCell. Make sure you copy and paste the identifier.
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AnimationCell", for: indexPath) as? TableViewCell else { return UITableViewCell()}
        
        // New model variable set to the specific model that the cell contains.
        let model = Model.shared.characters[indexPath.row]
        // The cell's character is equal to the model we created above.
        cell.character = model

        // Return the cell with all the new attributes we passed in.
        return cell
    }
    

    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // If the segue's identifier is equal to this, do the following.
        if segue.identifier == "ShowDetailSegue" {
            // Setting the newVC variable equal to the segue's destination as the ViewController we want it to be.
            if let detailVC = segue.destination as? DetailViewController {
                // Creating an indexPath that is the specific row that was tapped.
                if let indexPath = tableView.indexPathForSelectedRow {
                    // Setting the detailVC's character property equal to the specific character that was tapped.
                    detailVC.character = Model.shared.characters[indexPath.row]
                }
            }
        }
    }

}
