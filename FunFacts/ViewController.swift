//
//  ViewController.swift
//  FunFacts
//
//  Created by Zachary Jones on 6/14/17.
//  Copyright © 2017 Zachary Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var showButton: UIButton!
    
    var factProvider = FactProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        
        let newColor = BackgroundColorProvider.randomColor()
        view.backgroundColor = newColor
        showButton.tintColor = newColor
    }

}

