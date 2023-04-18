//
//  ViewController.swift
//  Post(TableView)
//
//  Created by Students on 10.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let idCell = "mailCell"
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sign to UITableViewDataSource protocol
        tableView.dataSource = self
        
        // sign to UITableViewDelegate protocol
        tableView.delegate = self
        
        // --- Navigation controller
        
        // set large size of NC:
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationItem.largeTitleDisplayMode = .always
        
    // add searche line
        
//        let search = UISearchController(searchResultsController: nil)
//        search.searchResultsUpdater = self
//        self.navigationItem.searchController = search
        
    }
}

// 2
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // data source
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: idCell)
        if cell == nil {
            cell =  UITableViewCell(style: .default, reuseIdentifier: "mailCell")
        }
        
        if indexPath.section == 0 {
            cell!.textLabel?.text = "Main text"
            cell!.imageView?.image = UIImage(systemName: "gear")
        } else {
            cell!.textLabel?.text = "Another text"
            cell!.imageView?.image = UIImage(systemName: "gear.fill")
        }
        
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 2
        default:
            return 3
        }
                
    }
    
    
    // set title to header
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section:"
    }
    
        
    // deledate
    
    // row's height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30.0
    }
    
    // what to do when user press the cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
        //start from 0
    }
    
}

//extension ViewController: UISearchResultsUpdating {
//
//    func updateSearchResults(for searchController: UISearchController) {
//        print(searchController.searchBar.text)
//    }
//
//
//}
