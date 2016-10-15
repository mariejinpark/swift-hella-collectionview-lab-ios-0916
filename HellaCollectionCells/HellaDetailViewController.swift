//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Marie Park on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {
    
    
    @IBOutlet weak var numbersLabel: UILabel!
    
    var numbersText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numbersLabel.text = numbersText
    }
    
    
}
