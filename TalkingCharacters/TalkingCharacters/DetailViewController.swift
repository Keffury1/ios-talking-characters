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
    
    var character: Model.Animation?
    
    override func viewWillAppear(_ animated: Bool) {
        let cells = Model.shared.cells(for: character!)
        imageView2.animationImages = cells
        imageView2.animationRepeatCount = 0
        imageView2.animationDuration = 0.0
            imageView2.startAnimating()
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let character = character else { return }
        talkingLabel.text = character.rawValue
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
