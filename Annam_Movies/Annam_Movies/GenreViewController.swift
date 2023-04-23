//
//  ViewController.swift
//  Annam_Movies
//
//  Created by Annam,Ribkarani on 4/23/23.
//

import UIKit

class GenreViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{

    

        @IBOutlet weak var genreTableView: UITableView!
        
        let genres: [Genre] = MovieData.genres
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Set up table view
            genreTableView.delegate = self
            genreTableView.dataSource = self
            genreTableView.register(UITableViewCell.self, forCellReuseIdentifier: "sectionCell")
        }
        
        // MARK: - Table view data source

        func numberOfSections(in tableView: UITableView) -> Int {
            return genres.count
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
            cell.textLabel?.text = genres[indexPath.section].category
            return cell
        }
        
        // MARK: - Table view delegate
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let moviesVC = storyboard?.instantiateViewController(withIdentifier: "MoviesViewController") as! MoviesViewController
            moviesVC.movies = genres[indexPath.section].movies
            moviesVC.title = genres[indexPath.section].category
            navigationController?.pushViewController(moviesVC, animated: true)
        }

    }

}

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
