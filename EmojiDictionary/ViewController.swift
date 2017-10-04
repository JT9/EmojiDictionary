//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Caleb Tsosie on 10/2/17.
//  Copyright © 2017 Caleb Tsosie. All rights reserved.
//

import UIKit

//Added UITableViewDataSource & UITableViewDelegate
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Tablesource and delegate looks to this view controller
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        
        //Passes emoji array to emojis when loading view
        emojis = makeEmojiArray()
        
    }
    
    /*
     
     TableView needs:
     How many rows should I have and what to put in those rows for a TableView
    */
    
    
    //How many rows are going to be in the TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //How many rows from array var
        return emojis.count
        
    }
    
    //What do you want in each row in the TableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //Testing to see what the output is
        print(indexPath.row)
        
        //Creating a new UITableViewCell and put it into this constant
        let cell = UITableViewCell()
        
        let emoji = emojis[indexPath.row]
        
        //Passing an array to the cell label
        cell.textLabel?.text = emoji.stringEmoji
        
        return cell
    }
    
    //When user clicks on cell to move to another view
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        //Used to pass the current emoji
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Constant used to move from one controller to the next
        let defViewController = segue.destination as! DefinitionViewController
        defViewController.emoji = sender as! Emoji
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Used to make an Emoji array
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😃"
        emoji1.dateCreated = 2008
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "👊"
        emoji2.dateCreated = 2010
        emoji2.category = "Gesture"
        emoji2.definition = "Fist Bump!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🎃"
        emoji3.dateCreated = 2011
        emoji3.category = "Holiday"
        emoji3.definition = "Halloween!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😺"
        emoji4.dateCreated = 2012
        emoji4.category = "Animal"
        emoji4.definition = "A cat face!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "👺"
        emoji5.dateCreated = 2011
        emoji5.category = "Supernatural"
        emoji5.definition = "Goblin!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "💩"
        emoji6.dateCreated = 2013
        emoji6.category = "Smiley"
        emoji6.definition = "Poop!"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "👻"
        emoji7.dateCreated = 2014
        emoji7.category = "Supernatural"
        emoji7.definition = "A ghost!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }

}

