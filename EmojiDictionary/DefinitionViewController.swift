//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by Caleb Tsosie on 10/2/17.
//  Copyright © 2017 Caleb Tsosie. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var dateCreatedLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(emoji)
        //Getting the emoji passed from the TableView cellLabel
        emojiLabel.text = emoji
        
        //If statements to change the definitionLabel to the corresponding emoji
        if emoji == "😃" {
         
            definitionLabel.text = "Smiling Face!"
            categoryLabel.text = "Category: Smiley"
            dateCreatedLabel.text = "Date Created: 2011"
            
        }
        if emoji == "👊" {
            
            definitionLabel.text = "Fist Bump!"
            categoryLabel.text = "Category: Gesture"
            dateCreatedLabel.text = "Date Created: 2010"
            
        }
        if emoji == "🎃" {
            
            definitionLabel.text = "Halloween!"
            categoryLabel.text = "Category: Holiday"
            dateCreatedLabel.text = "Date Created: 2009"
            
        }
        if emoji == "😺" {
            
            definitionLabel.text = "Smiling Cat Face!"
            categoryLabel.text = "Category: Animal"
            dateCreatedLabel.text = "Date Created: 2011"
            
        }
        if emoji == "👺" {
            
            definitionLabel.text = "Goblin!"
            categoryLabel.text = "Category: Supernatural"
            dateCreatedLabel.text = "Date Created: 2009"
            
        }
        if emoji == "💩" {
            
            definitionLabel.text = "Poop!"
            categoryLabel.text = "Category: Smiley"
            dateCreatedLabel.text = "Date Created: 2010"
            
        }
        if emoji == "👻" {
            
            definitionLabel.text = "Ghost!"
            categoryLabel.text = "Category: Supernatural"
            dateCreatedLabel.text = "Date Created: 2013"
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
