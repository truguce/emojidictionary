//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Patrick Fleischman on 12/20/17.
//  Copyright © 2017 Fleischman Consulting. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableMain: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableMain.dataSource = self
        tableMain.delegate = self
        emojis = makeEmojiArry()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 /* [,"","🤓","🤪",","⛑",","👮‍♂️","🧜🏽‍♀️","","🧜🏻‍♂️","🦋","🦄","🐯",","🐙","","🐬","🐅","🌍","","🍆","💦","🍩"]
 */
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "This is a smily face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2012
        emoji2.category = "Smiley"
        emoji2.definition = "This guy got shades"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "💩"
        emoji3.birthYear = 2007
        emoji3.category = "Poop"
        emoji3.definition = "The King of poop"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💋"
        emoji4.birthYear = 1998
        emoji4.category = "Kiss"
        emoji4.definition = "This guy got shades"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🧚🏼‍♂️"
        emoji5.birthYear = 2003
        emoji5.category = "Fantasy"
        emoji5.definition = "This guy got shades"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🕷"
        emoji6.birthYear = 2006
        emoji6.category = "Arachnid"
        emoji6.definition = "This guy got shades"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🦖"
        emoji7.birthYear = 2012
        emoji7.category = "Dinosaur"
        emoji7.definition = "This guy got shades"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "☃️"
        emoji8.birthYear = 1997
        emoji8.category = "Snow"
        emoji8.definition = "This guy got shades"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
    }

}

