//
//  DetailViewController.swift
//  HW1
//
//  Created by D'Andre nicholson on 9/5/23.
//

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
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
