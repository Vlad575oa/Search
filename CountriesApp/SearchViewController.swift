//
//  SearchViewController.swift
//  ContriesApp
//
//  Created by user on 15.02.2023.
//

import UIKit

class SearchViewController: UIViewController , UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    var array = Country.array()
    var filteredArray: [Country] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = array[indexPath.row].title
        content.image = UIImage(named: array[indexPath.row].imageName)
        cell.contentConfiguration = content
        
        return cell
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let storyBoardInfo = storyboard?.instantiateViewController(withIdentifier: "InfoStoryboard") as? InfoViewController else {return}
        guard var index = tableView.indexPathForSelectedRow else { return }
        storyBoardInfo.country = array[index.row]
        
        performSegue(withIdentifier: "send", sender: nil)
        
      
//        storyBoardInfo.ImageItem = array[indexPath.row].imageName
    }
    
   
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func search(_ sender: UITextField) {
        
        if let searchText = sender.text {
            filteredArray = searchText.isEmpty ? array : array.filter{$0.title.lowercased().contains(searchText.lowercased())
            }
        }
    }
}

   
