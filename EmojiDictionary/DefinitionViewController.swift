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
            categoryLabel.text = "Category: Hand"
            dateCreatedLabel.text = "Date Created: 2009"
            
        }
        if emoji == "🎃" {
            
            definitionLabel.text = "Halloween!"
            
        }
        if emoji == "😺" {
            
            definitionLabel.text = "Smiling Cat Face!"
            
        }
        if emoji == "👺" {
            
            definitionLabel.text = "Goblin!"
            
        }
        if emoji == "💩" {
            
            definitionLabel.text = "Poop!"
            
        }
        if emoji == "👻" {
            
            definitionLabel.text = "Ghost!"
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
