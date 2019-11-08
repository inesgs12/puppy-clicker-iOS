//
//  ViewController.swift
//  Clicker
//
//  Created by Ines Guerrero on 07/11/2019.
//  Copyright © 2019 Ines Guerrero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    let colors = [UIColor.purple, UIColor(named: "orangeish"), UIColor(named: "pinkish"), UIColor(named: "blueish")]
    let numberOfClicks = 5
  
    
    @IBOutlet weak var counterLabel: UILabel!
     @IBOutlet weak var increaseButtonImage: UIButton!
    @IBOutlet weak var decreaseButtonImage: UIButton!
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Hello, world")
        counter += 1
        counterLabel.text = "\(counter)"
          let index = abs(counter / numberOfClicks % colors.count)
        view.backgroundColor = colors[index]
        if counter > 10 {
            increaseButtonImage.setImage(UIImage(named: "puppy-emoji-png-3"), for: .normal)
             decreaseButtonImage.setImage(nil, for: .normal)
            
        }
    }
    
    @IBAction func decreaseCounter(_ sender: Any) {
        counter -= 1
        counterLabel.text = "\(counter)"
          let index = abs(counter / numberOfClicks % colors.count)
        view.backgroundColor = colors[index]
        if counter < 10 {
            decreaseButtonImage.setImage(UIImage(named: "labrador"), for: .normal)
            increaseButtonImage.setImage(nil, for: .normal)
           
        }
    }
    
   
}

