//
//  InfoViewController.swift
//  ContriesApp
//
//  Created by user on 15.02.2023.
//

import UIKit



class InfoViewController: UIViewController {
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageLabel: UIImageView!
    
    var country: Country!
//    Country(title: "s", imageName: "D", isActive: true)
    
    var titleItem: String = ""
    var ImageItem = UIImage(named: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = country.title
        

        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
