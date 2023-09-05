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
        ContextItem(mainLabel: "Year", minorLabel: "Senior", infoLabel: "I am a senior at FAU, getting my second bachelors in computer science."),
        ContextItem(mainLabel: "Origin", minorLabel: "Ft. Lauderdale, FL", infoLabel: "I was born and raised in South Florida. My favorite place here is Morikami Gardens."),
        ContextItem(mainLabel: "Fun Fact", minorLabel: "", infoLabel: "I was a 7th/8th grade math teacher before starting my career as a programmer.")
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
