//
//  ViewController.swift
//  LookBook
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["🚶‍♂️" : "casual", "🕺" : "formal", "🏃‍♂️" : "athletic", "🚶‍♀️" : "fcasual", "💃" : "fformal", "🏃‍♀️" : "fathletic"]
    
    let customMessages = ["casual":["outfit 1","outfit 2","outfit 3"],"formal":["choice 1", "choice 2", "choice 3"], "athletic":["clothes 1", "clothes 2", "clothes 3"] ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(_ sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let random = Int.random(in: 0...2)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[random]
        let alertController = UIAlertController(title: "Maybe you should wear", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "continue", style: UIAlertAction.Style.default, handler: nil))
        present(alertController,animated: true,completion: nil)
    }

}

