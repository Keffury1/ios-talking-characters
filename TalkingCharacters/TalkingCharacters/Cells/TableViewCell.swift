//
//  TableViewCell.swift
//  TalkingCharacters
//
//  Created by Bobby Keffury on 8/1/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageView1: UIImageView!
    
    // Character that is passed in from the TableViewController
    var character: Model.Animation? {
        didSet {
            // When the variable is set, update the views.
            updateViews()
        }
    }
    
    private func updateViews() {
        // Make sure the character exists or else return.
        guard let character = character else { return }
        
        // New image property set to the image in the model with the spectific character that is passed in.
        let image = Model.shared.image(for: character)
        // Set the imageView's image to the image we just created.
        imageView1.image = image
    }

}
