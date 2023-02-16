//
//  SearchViewController.swift
//  ContriesApp
//
//  Created by user on 15.02.2023.
//

import UIKit

class SearchViewController: UIViewController , UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var textFieldLabel: UITextField!
    @IBOutlet weak var tableV: UITableView!
    
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
        let indexPath = tableView.indexPathForSelectedRow
        guard storyboard?.instantiateViewController(withIdentifier: "InfoStoryboard") is InfoViewController else {return}
        let country = array[indexPath!.row]
        performSegue(withIdentifier: "send", sender: country)
            
        //        delegate = storyBoardInfo
        //        storyBoardInfo.setNewValue(city: country)
        //        storyBoardInfo.country = country
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let InvoVC = segue.destination as? InfoViewController else { return }
        InvoVC.country = sender as? Country
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filteredArray = array
    }
    
    
    @IBAction func search(_ sender: UITextField) {
        if let searchText = sender.text {
            array = searchText.isEmpty ?
            array :
            filteredArray.filter{$0.title.lowercased().contains(searchText.lowercased())}
        }
        tableV.reloadData()
    }
}

   
