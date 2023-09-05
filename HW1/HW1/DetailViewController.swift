//
//  DetailViewController.swift
//  HW1
//
//  Created by bianca nicholson on 9/5/23.
//

import UIKit

class DetailViewController: UIViewController {

    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var contextItem: ContextItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let contextItem = contextItem {
            
            titleLabel.text = contextItem.title
            subtitleLabel.text = contextItem.subtitle
            descriptionLabel.text = contextItem.description
        }
    }
    
        
}
