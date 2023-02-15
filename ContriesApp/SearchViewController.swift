//
//  SearchViewController.swift
//  ContriesApp
//
//  Created by user on 15.02.2023.
//

import UIKit

class SearchViewController: UIViewController , UITableViewDataSource {
    
    var filteredArray: [Country] = []
    var selectedIndex: IndexPath!
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Countries.shared.countriesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CastomTableViewCell
        let countries = filteredArray[indexPath.row ]
        
        cell.selectionStyle = .none
        cell.labelView.text = countries.title
        cell.tableRowView.layer.borderWidth = 1
        cell.tableRowView.layer.borderColor = UIColor(red: 0.913, green: 0.945, blue: 1, alpha: 1).cgColor
        cell.tableRowView.layer.cornerRadius = 16
        cell.iconImagesView.image = UIImage(named: countries.imageName)
        
        if selectedIndex == indexPath  {
            cell.tableRowView.backgroundColor = UIColor(red: 0.913, green: 0.945, blue: 1, alpha: 1)
        } else {
            cell.tableRowView.backgroundColor = UIColor.white
       }
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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

class CastomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var tableRowView: UIView!
    @IBOutlet weak var iconImagesView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    

}
