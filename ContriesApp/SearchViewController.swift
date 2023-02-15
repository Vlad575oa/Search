//
//  SearchViewController.swift
//  ContriesApp
//
//  Created by user on 15.02.2023.
//

import UIKit

class SearchViewController: UIViewController , UITableViewDataSource {
 
    var array = Country.array()
    var filteredArray: [Country] = []
    
    
    @IBOutlet weak var table: UITableView!
    
        
   
    var selectedIndex: IndexPath!
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let countries = array[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = array[indexPath.row].title
        content.image = UIImage(named: array[indexPath.row].imageName)
        cell.contentConfiguration = content
   
        return cell
    }
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        table.reloadData()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func search(_ sender: UITextField) {
   
        if let searchText = sender.text {
            filteredArray = searchText.isEmpty ? array : array.filter{$0.title.lowercased().contains(searchText.lowercased())
            }
            table.reloadData()
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let infoVC = segue.destination as? InfoViewController else { return }
//
//
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


//@IBAction func filterCountries(_ sender: UITextField) {
//
//
//     let imageView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
//     let image = UIImage(named: "search");
//     imageView.image = image;
//     let iconContainerView: UIView = UIView(frame:CGRect(x: 0, y: 0, width: 30, height: 30))
//     iconContainerView.addSubview(imageView)
//
//     sender.leftView = iconContainerView
//     sender.leftViewMode = .always
//
//if let searchText = sender.text {
//
//    filterCountries = searchText.isEmpty ? countriesArray : countriesArray.filter{$0.title.contains(searchText.capitalized)}
//    table.reloadData()
//
//}
