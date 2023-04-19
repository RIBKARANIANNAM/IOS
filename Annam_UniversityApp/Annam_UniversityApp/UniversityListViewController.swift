//
//  UniversityListViewController.swift
//  Annam_UniversityApp
//
//  Created by Annam,Ribkarani on 4/15/23.
//

import UIKit

class UniversityListViewController: UIViewController {

    @IBOutlet weak var universityListTableView: UITableViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK: - Properties
        
        var domain: String?
        var universities: [University] = []
        
        
        

        
        // MARK: - View Lifecycle
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Set title
            title = domain
            
            // Register cell nib
            let nib = UINib(nibName: "UniversityTableViewCell", bundle: nil)
            universityListTableView.register(nib, forCellReuseIdentifier: "universityCell")
            
            // Load universities
            if let domain = domain {
                universities = Universities.list_Array.filter { $0.domain == domain }
            }
        }
        
        // MARK: - UITableViewDataSource
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return universities.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = universityListTableView.dequeueReusableCell(withIdentifier: "universityCell", for: indexPath) as! UniversityTableViewCell
            
            let university = universities[indexPath.row]
            cell.configure(with: university)
            
            return cell
        }
        
        // MARK: - UITableViewDelegate
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let university = universities[indexPath.row]
            
            // Perform segue to UniversityInfoViewController
            performSegue(withIdentifier: "universityInfoSegue", sender: university)
        }
        
        // MARK: - Navigation
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "universityInfoSegue" {
                if let university = sender as? Universities,
                    let destinationVC = segue.destination as? UniversityInfoViewController {
                    destinationVC.university = universities
                }
            }
        }
    }
    
    

    


