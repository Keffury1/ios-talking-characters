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
    
    var character: Model.Animation? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let character = character else { return }
        
        let image = Model.shared.image(for: character)
        imageView1.image = image
    }

}
