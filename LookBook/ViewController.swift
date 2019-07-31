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
    
    let customMessages = ["casual":["You can never go wrong with some jeans and a plaid button up","Black/White tee goes with everything","All black outfit with colored snerakers"],"formal":["Fitted Blazers make any outfit fancy", "Button up shirts and black pants are always acceptable", "Doyou have a collard shirt? If so throw on some jeans with that"], "athletic":["Sweatpants are a staple", "Muscle T-shirts allow for good ventilation", "You don't have to play basketball to wear basketball shorts to work out."]]
    
    
    
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

