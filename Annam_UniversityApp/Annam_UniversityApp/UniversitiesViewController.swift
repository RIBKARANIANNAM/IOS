//
//  ViewController.swift
//  Annam_UniversityApp
//
//  Created by Annam,Ribkarani on 4/15/23.
//

import UIKit

class UniversitiesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return domains.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell  = universitiesTableView.dequeueReusableCell(withIdentifier: "domainCell", for: indexPath)
        cell.textLabel?.text = domains[indexPath.row].domain
        return cell
    }
    
    
    
    
    @IBOutlet weak var universitiesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Domains"
        // Do any additional setup after loading the view.
        universitiesTableView.dataSource = self
        universitiesTableView.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "listsSegue" {
            var destination = segue.destination as! UniversityListViewController
            destination.universities = domains[(universitiesTableView.indexPathForSelectedRow?.row)!].list_Array
            destination.title =  domains[(universitiesTableView.indexPathForSelectedRow?.row)!].domain
        }
        
        
    }
}
