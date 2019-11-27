//
//  DetailViewController.swift
//  TalkingCharacters
//
//  Created by Bobby Keffury on 8/1/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var talkingLabel: UILabel!
    @IBOutlet weak var imageView2: UIImageView!
    
    // Character variable of type Model.Animation? that had information passed in from the tableViewController.
    var character: Model.Animation?
    
    // Before the view appears, do the following.
    override func viewWillAppear(_ animated: Bool) {
        // New cells set to the Model's cell that passes in the character.
        let cells = Model.shared.cells(for: character!)
        // The imageView's animation image is set to the cells we created above.
        imageView2.animationImages = cells
        // The imageView's animationRepeatCount is set to 0
        imageView2.animationRepeatCount = 0
        // The imageView's animation duration is set to 0
        imageView2.animationDuration = 0.0
        // Start the imageView's animation
            imageView2.startAnimating()
    }
    
    // When the view loads, do the following.
    override func viewDidLoad() {
        super.viewDidLoad()

        // Make sure the character exists or else return.
        guard let character = character else { return }
        // Set the text of the talking label equal to the character's rawValue.
        talkingLabel.text = character.rawValue
    }
    

}
