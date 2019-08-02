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
    
//
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Model.shared.characters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AnimationCell", for: indexPath) as? TableViewCell else { return UITableViewCell()}
        
        //
        
        let model = Model.shared.characters[indexPath.row]
        cell.character = model

        return cell
    }
    

    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetailSegue" {
            //
            if let detailVC = segue.destination as? DetailViewController {
                //
                if let indexPath = tableView.indexPathForSelectedRow {
                    //
                    detailVC.character = Model.shared.characters[indexPath.row]
                    
                }
            }
        }
    }

}
