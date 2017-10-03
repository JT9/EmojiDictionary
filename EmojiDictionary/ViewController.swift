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
    
    
    var emojis = ["😃","👊","🎃","😺","👺","💩","👻"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Tablesource and delegate looks to this view controller
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        
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
        
        //Passing an array to the cell label
        cell.textLabel?.text = emojis[indexPath.row]
        
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
        defViewController.emoji = sender as! String
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

