//
//  ViewController.swift
//  LookBook
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 KWK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var randomWord: UILabel!
    @IBOutlet var imageOne: UIImageView!
    @IBOutlet var imageTwo: UIImageView!
    
    let imageNames = ["caone", "catwo", "cathree", "cafour", "cafive"]
    
    
   
    @IBAction func showWord(_ sender: UIButton) {
        
        let array = ["Don't be afraid to play with color!", "You can pair anything with jeans", "white goes with everything", "oh! black is everything!"]
        let RandomWordGen = Int(arc4random_uniform(UInt32(array.count)))
        randomWord.text = array[RandomWordGen]
        
    }
    
    
    @IBAction func showImage(_ sender: Any) {
        
        let leftNumber:Int = Int(arc4random_uniform(5))
        
        imageOne.image = UIImage(named:imageNames[leftNumber])
        
        let rightNumber: Int = Int(arc4random_uniform(5))
        
        imageTwo.image = UIImage(named:imageNames[rightNumber])
        
        
    }
    
    
    @IBOutlet var formalRandom: UILabel!
    @IBOutlet var formalImage: UIImageView!
    
    let imageformalNames = ["fone", "ftwo", "fthree", "ffour"]
    
    
    @IBAction func formalshowWord(_ sender: UIButton) {
        
        let array = ["dresses can be easy to wear", "button up shirts and pants are great"]
        
        let RandomWord = Int(arc4random_uniform(UInt32(array.count)))
        randomWord.text = array[RandomWord]
        
        
    }
    
    
    @IBAction func formalshowImage(_ sender: Any) {
        
        let leftNumber: Int = Int(arc4random_uniform(4))
        imageOne.image = UIImage(named: imageformalNames[leftNumber])
        
        let rightNumber: Int = Int(arc4random_uniform(4))
        imageTwo.image = UIImage(named:imageformalNames[rightNumber])
        
        
    }
    
    
    
    
    
    
//
////    let emojis = ["🚶‍♂️" : "casual", "🕺" : "formal", "🏃‍♂️" : "athletic", "🚶‍♀️" : "fcasual", "💃" : "fformal", "🏃‍♀️" : "fathletic"]
//
//    let customMessages = ["casual":["You can never go wrong with some jeans and a plaid button up","Black/White tee goes with everything","All black outfit with colored sneakers"],"formal":["Fitted Blazers make any outfit fancy", "Button up shirts and black pants are always acceptable", "Do you have a collard shirt? If so throw on some jeans with that"], "athletic":["Sweatpants are a staple", "Muscle T-shirts allow for good ventilation", "You don't have to play basketball to wear basketball shorts to work out."]]
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    @IBAction func showMessage(_ sender: UIButton) {
//        let selectedEmotion = sender.titleLabel?.text
//        let random = Int.random(in: 0...2)
//        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[random]
//        let alertController = UIAlertController(title: "Maybe you should wear", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title: "continue", style: UIAlertAction.Style.default, handler: nil))
//        present(alertController,animated: true,completion: nil)
//    }
//
//
//
//
//}

}
