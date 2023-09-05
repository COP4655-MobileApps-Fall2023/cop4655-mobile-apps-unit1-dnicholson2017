//
//  ViewController.swift
//  HW1
//
//  Created by bianca nicholson on 9/4/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var originLabel: UILabel!
    
    
    @IBOutlet weak var hobbyLabel: UILabel!
    

    var contextItems = [
        ContextItem(mainLabel: "Role", minorLabel: "Software Engineer", infoLabel: "I develop mobile apps."),
        ContextItem(mainLabel: "Location", minorLabel: "San Francisco, CA", infoLabel: "I live in the Bay Area."),
        ContextItem(mainLabel: "College", minorLabel: "Stanford University", infoLabel: "I studied Computer Science.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "NICHOLSON_D'ANDRE_1064")
        yearLabel.text = contextItems[0].mainLabel + ": " + contextItems[0].minorLabel
        originLabel.text = contextItems[1].mainLabel + ": " + contextItems[1].minorLabel
        hobbyLabel.text = contextItems[2].mainLabel + ": " + contextItems[2].minorLabel
    }
    

    
    @IBAction func yearButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetail", sender: contextItems[0])
    }
    
    @IBAction func originButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetail", sender: contextItems[1])
    }
    
    @IBAction func hobbyButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetail", sender: contextItems[2])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let detailVC = segue.destination as? DetailViewController,
                let contextItem = sender as? ContextItem {
                detailVC.contextItem = contextItem
            }
        }
    }
}
