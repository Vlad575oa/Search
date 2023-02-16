//
//  InfoViewController.swift
//  ContriesApp
//
//  Created by user on 15.02.2023.
//

import UIKit

class InfoViewController: UIViewController  {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    
    var country: Country!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = country.title
        imageLabel.image = UIImage(named: country.imageName)
    }
}
    
  
