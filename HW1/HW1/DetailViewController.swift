//
//  DetailViewController.swift
//  HW1
//
//  Created by D'Andre nicholson on 9/5/23.
//

import UIKit

class DetailViewController: UIViewController {

        
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    @IBOutlet weak var minorLabel: UILabel!
    
    
    @IBOutlet weak var infoLabel: UILabel!
    
    
    var contextItem: ContextItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let contextItem = contextItem {
            mainLabel.text = contextItem.mainLabel
            minorLabel.text = contextItem.minorLabel
            infoLabel.text = contextItem.infoLabel
        }
    }
    
}
