//
//  Model.swift
//  TalkingCharacters
//
//  Created by Bobby Keffury on 8/1/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import UIKit

// Extension on the Int property.
extension Int {
    // Transfers the Int to a string.
    fileprivate func stringPadded(to count: Int) -> String {
        var string = String(self)
        while string.count < count { string = "0" + string }
        return string
    }
}

class Model {
    // Shared constant that allows other files to access the model itself without initializing.
    static let shared = Model()
    private init() {}
    
    // Enum to story the animations that are of type String and CaseIterable.
    enum Animation: String, CaseIterable {
        // For each case, set the new name.
        case bureaucrat = "Talking Bureaucrat"
        case frog = "Talking Frog"
        case ranger = "Talking Ranger"
        case vendor = "Talking Vendor"
        case bot = "Talking Woodbot"
    }
    
    // Setting the new cellCounts property to specific Int's for each character.
    private let cellCounts = [Animation.bureaucrat: 26, .frog: 62, .ranger: 86, .vendor: 36, .bot: 69]
    
    // Characters variable of type Array of Animation.
    var characters: [Animation] {
        // Returns all cases of the animation.
        return Animation.allCases
    }
    
    func image(for character: Animation) -> UIImage {
        // RETURN THE 000 IMAGE FOR THE GIVEN CHARACTER HERE
        if let image = UIImage(named: "\(character.rawValue)000"){
          
            return image
        }
        return UIImage()
    }
    
    func cells(for character: Animation) -> [UIImage] {
        // RETURN AN ARRAY OF IMAGES FOR THE GIVEN CHARACTER HERE
        var imageArray = [UIImage]()
        if let counts = cellCounts[character] {
            for i in 0 ..< counts {
                if i < 9 {
                    if let characterImage = UIImage(named: "\(character.rawValue)00\(i)") {
                        imageArray.append(characterImage)
                    }
                } else {
                    if let characterImage = UIImage(named: "\(character.rawValue)0\(i)") {
                        imageArray.append(characterImage)
                    }
                }
            }
        }
        return imageArray
    }
    
    
    
}


