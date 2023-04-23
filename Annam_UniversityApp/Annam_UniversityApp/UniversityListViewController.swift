//
//  UniversityListViewController.swift
//  Annam_UniversityApp
//
//  Created by Annam,Ribkarani on 4/15/23.
//

import UIKit

class UniversityListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return universities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = universityListTableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        cell.textLabel?.text = universities[indexPath.row].collegeName
        return cell
    }
    

    @IBOutlet weak var universityListTableView: UITableView!
    
    var universities: [UniversityList] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        universityListTableView.dataSource = self
        universityListTableView.delegate = self
    }

    // MARK: - Table view data source
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "universityInfoSegue" {
            let universityInfoVC = segue.destination as! UniversityInfoViewController
            universityInfoVC.university = universities[(universityListTableView.indexPathForSelectedRow?.row)!]
            universityInfoVC.title = universities[(universityListTableView.indexPathForSelectedRow?.row)!].collegeName
        }
    }

}
