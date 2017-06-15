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
    var factProvider = FactProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factProvider.facts[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.facts[1]
    }

}

