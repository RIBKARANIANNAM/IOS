//
//  ViewController.swift
//  Annam_Movies
//
//  Created by Annam,Ribkarani on 4/23/23.
//

import UIKit

class GenreViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate{
    
    
    
    
    @IBOutlet weak var genreTableView: UITableView!
    var genres: [Genre] = []
    var selectedGenere: Genre?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //genres = MovieData.getGenres()
        
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
    
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "movieSegue", let moviesVC = segue.destination as? MoviesViewController, let selectedGenre = sender as? Genre {
                moviesVC.genre = selectedGenre
                title = selectedGenre.category
            }
        }
        
    }
    

    
    
    
    
   

