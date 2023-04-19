//
//  ViewController.swift
//  Annam_UniversityApp
//
//  Created by Annam,Ribkarani on 4/15/23.
//

import UIKit

class UniversitiesViewController: UIViewController {

    @IBOutlet weak var universitiesTableView: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "universityListSegue" {
            if let indexPath = universitiesTableView.indexPathForSelectedRow {
                let selectedDomain = Universities[indexPath.section].domain
                let universityList = Universities.first(where: { $0.domain == selectedDomain })?.list_Array ?? []
                let destinationVC = segue.destination as! UniversityListViewController
                destinationVC.universityList = UniversityList
                destinationVC.title = selectedDomain
            }
        }
    }


}

