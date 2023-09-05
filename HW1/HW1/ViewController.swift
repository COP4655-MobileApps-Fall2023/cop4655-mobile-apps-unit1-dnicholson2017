//
//  ViewController.swift
//  HW1
//
//  Created by bianca nicholson on 9/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var roleLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var collegeLabel: UILabel!

    var contextItems = [
        ContextItem(title: "Role", subtitle: "Software Engineer", description: "I develop mobile apps."),
        ContextItem(title: "Location", subtitle: "San Francisco, CA", description: "I live in the Bay Area."),
        ContextItem(title: "College", subtitle: "Stanford University", description: "I studied Computer Science.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = UIImage(named: "my_photo")
        roleLabel.text = contextItems[0].title + ": " + contextItems[0].subtitle
        locationLabel.text = contextItems[1].title + ": " + contextItems[1].subtitle
        collegeLabel.text = contextItems[2].title + ": " + contextItems[2].subtitle
    }
    
    @IBAction func roleButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetail", sender: contextItems[0])
    }
    
    @IBAction func locationButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "showDetail", sender: contextItems[1])
    }
    
    @IBAction func collegeButtonTapped(_ sender: UIButton) {
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
