//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Remus Victuelles on 17/12/16.
//  Copyright © 2016 Noypi Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        
        generateEmojis()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]._symbol
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "moveSegue", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let largeEmojiVC = segue.destination as! LargeEmojiViewController
        largeEmojiVC.emoji = sender as! Emoji
    }
    
    func generateEmojis() {
        emojis.append(Emoji(symbol: "😀", name: "Smiley", description: "Smiling Emoji", categ: Emoji.category.emoticons))
        
        emojis.append(Emoji(symbol: "🤡", name: "Clowney", description: "Creepy Clown Emoji", categ: Emoji.category.emoticons))
        
        emojis.append(Emoji(symbol: "🤑", name: "Ka-ching-ey", description: "$$$ Emoji", categ: Emoji.category.emoticons))
        
        emojis.append(Emoji(symbol: "🐨", name: "Koal-ey", description: "Koala Emoticon", categ: Emoji.category.animals))
        
        emojis.append(Emoji(symbol: "🐒", name: "Monkey", description: "Side-view Monkey Emoji", categ: Emoji.category.animals))
        
        emojis.append(Emoji(symbol: "🏥", name: "Hospital-ey", description: "Hospital Building Emoji", categ: Emoji.category.buildings))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

