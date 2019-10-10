//
//  ViewController.swift
//  Teki
//
//  Created by Adib Lgs on 08/10/2019.
//  Copyright © 2019 Adib Lgs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Stars List
    var celebrities = ["le Steve Jobs", "le Zinedine Zidane", "la Madonna", "le Karl Lagerfeld",
                       "la Scarlett Johansson"]
    var activities = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues lourdes",
                      "de la raclette party"]
    
    
 
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        let randomIndex = Int(arc4random_uniform(UInt32(celebrities.count)))
        let celebrity = celebrities[randomIndex]
        
        
        
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        let activity = activities[randomIndex2]
        
        let quote = "Tu es " + celebrity + " " + activity + " !"
        
        
        quoteLabel.text = quote
    }
}

