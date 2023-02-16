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
    
    
    //protocol InfoCountryDelegate {
    //    func setNewValue(city: Country)
    //}
    
//    func setNewValue(city: Country) {
//        titleLabel.text = country.title
//    }
}
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let VC = segue.destination as? SearchViewController else {return}
//        VC.delegate = self
//
//    }
    
  
