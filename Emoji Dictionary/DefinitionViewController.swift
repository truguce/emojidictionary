//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Patrick Fleischman on 12/21/17.
//  Copyright © 2017 Fleischman Consulting. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        /*
         
        */
        switch (emoji){
        case ("😀"):
            definitionLabel.text = "I am a happy face"
        case ("😎"):
            definitionLabel.text = "Look at my sunglasses"
        case ("🤓"):
            definitionLabel.text = "Big nerd"
        case ("🤪"):
            definitionLabel.text = "Too funny"
        case ("💩"):
            definitionLabel.text = "Big pile of poo, does something eat me?"
        case ("⛑"):
            definitionLabel.text = "Stay clear of the fireman"
        case ("💋"):
            definitionLabel.text = "Here is a big kiss"
        case ("👮‍♂️"):
            definitionLabel.text = "POLICE, FREZZE!!!"
        case ("🧜🏽‍♀️"):
            definitionLabel.text = "Mermaidish"
        case ("🧚🏼‍♂️"):
            definitionLabel.text = "Fairy"
        case ("🧜🏻‍♂️"):
            definitionLabel.text = "What the hell are you!!"
        case ("🦋"):
            definitionLabel.text = "Butt_erfly"
        case ("🦄"):
            definitionLabel.text = "I'm a unicorn"
        case ("🐯"):
            definitionLabel.text = "Meow"
         case ("🕷"):
            definitionLabel.text = "I am a spider"
         case ("🐙"):
            definitionLabel.text = "I can escape from anything"
         case ("🦖"):
            definitionLabel.text = "Hello, My name is David"
         case ("🐬"):
            definitionLabel.text = "Doll fin"
         case ("🐅"):
            definitionLabel.text = "Pretty kitty"
         case ("🌍"):
            definitionLabel.text = "Mars"
         case ("☃️"):
            definitionLabel.text = "Olaf"
         case ("🍆"):
            definitionLabel.text = "Eggplant parmesan"
         case ("💦"):
            definitionLabel.text = "Wet"
         case ("🍩"):
            definitionLabel.text = "Doughnut"
        default:
            definitionLabel.text = "I dont know what this emoji is"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
