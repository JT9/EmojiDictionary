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
    
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(emoji)
        //Getting the emoji passed from the TableView cellLabel
        emojiLabel.text = emoji.stringEmoji
        
        //Updating dateCreatedLabel from DefinitionViewController
        dateCreatedLabel.text = "Date Created: \(emoji.dateCreated)"
        
        //Updating categoryLabel from DefinitionViewController
        categoryLabel.text = "Category: \(emoji.category)"
        
        //Updating definitionLabel from DefinitionViewController
        definitionLabel.text = emoji.definition
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
