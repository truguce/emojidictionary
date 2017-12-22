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
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthyearLabel: UILabel!
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji.stringEmoji
        categoryLabel.text = "Category: \(emoji.category)"
        birthyearLabel.text = "Birthyear: \(emoji.birthYear)"
        definitionLabel.text = "\(emoji.definition)"
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
