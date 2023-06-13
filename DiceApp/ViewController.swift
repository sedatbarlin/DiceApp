//
//  ViewController.swift
//  DiceApp
//
//  Created by Sedat on 13.06.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollButton.layer.cornerRadius = 25
        diceImageOne.layer.cornerRadius = 40
        diceImageTwo.layer.cornerRadius = 40
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        diceImageOne.image = diceArray.randomElement()
        diceImageTwo.image = diceArray.randomElement()
    }
}

